#!/usr/bin/python
# -*- coding: utf-8 -*-

import requests, argparse
from concurrent.futures import ThreadPoolExecutor
from requests.auth import HTTPBasicAuth


class Docker(object):
    def __init__(self, hub, repos, user, passwd):
        self.hub = hub
        self.repos = repos
        self.user = user
        self.passwd = passwd
        # self.path = path

    # def get_folder(self):
    #     List = []
    #     for F in os.listdir(self.path):
    #         List.append(F)
    #     return List

    def get_tag_list(self, hub, repo):
        # 获取这个repo的所有tags
        tag_list_url = '%s/v2/%s/tags/list' % (hub, repo)
        if self.user and self.passwd:
            r1 = requests.get(url=tag_list_url, auth=HTTPBasicAuth(self.user, self.passwd))
        else:
            r1 = requests.get(url=tag_list_url)
        tag_list = r1.json().get('tags')
        return tag_list

    def main(self):
        thpool = ThreadPoolExecutor(10)
        # get_folder = self.get_folder()
        for repo in self.repos:
            thpool.submit(self.delete_images, repo)

        thpool.shutdown(wait=True)

    def delete_images(self, repo):
        hub = self.hub
        tag_list = self.get_tag_list(hub=hub, repo=repo)
        num = 0
        try:
            # 保留最后两个版本的镜像
            for tag in tag_list[:-2]:
                # 获取image digest摘要信息
                get_info_url = '{}/v2/{}/manifests/{}'.format(hub, repo, tag)
                header = {"Accept": "application/vnd.docker.distribution.manifest.v2+json"}
                if self.user and self.passwd:
                    r2 = requests.get(url=get_info_url, headers=header, timeout=10, auth=HTTPBasicAuth(self.user, self.passwd))
                else:
                    r2 = requests.get(url=get_info_url, headers=header, timeout=10)
                digest = r2.headers.get('Docker-Content-Digest')

                # 删除镜像
                delete_url = '%s/v2/%s/manifests/%s' % (hub, repo, digest)
                if self.user and self.passwd:
                    r3 = requests.delete(url=delete_url, auth=HTTPBasicAuth(self.user, self.passwd))
                else:
                    r3 = requests.delete(url=delete_url)
                if r3.status_code == 202:
                    num += 1

        except Exception as e:
            print(str(e))

        print('仓库%s 共删除了%i个历史镜像' % (repo, num))


parser = argparse.ArgumentParser(description='Parameter options')
parser.add_argument('--hub', '-b', help='registry url + port')
parser.add_argument('--repos', '-r', help='registry repos', nargs='+')
parser.add_argument('--user', '-u', help='registry user')
parser.add_argument('--passwd', '-p', help='registry passwd')
args = parser.parse_args()


if __name__ == '__main__':
    try:
        d = Docker(repos=args.repos, hub=args.hub, user=args.user, passwd=args.passwd)
        d.main()
    except Exception as e:
        parser.error('Please enter the correct parameters')
