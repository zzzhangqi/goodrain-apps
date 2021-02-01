#!/us/bin/env python
# -*- coding:utf-8 -*-

import requests
import logging
import falcon
import json
import os
from wsgiref import simple_server

# 微信机器人链接
wechat_boot_url = os.getenv("Wechat_WebHook_URL")
# 企业名称
enterprise = os.getenv("Enterprise")
# alertManager对外地址
AlertManagerURL = os.getenv("AlertManagerURL")


# 日志
logging.basicConfig(filename="webhook.log", level=logging.DEBUG, format='%(asctime)s %(levelname)s:%(message)s', datefmt='%Y/%m/%d %I:%M:%S %p')


# 处理从 AlertManager 接收过来的信息
def message_handler(message):
    message = eval(message)
    alerts = message["alerts"]
    alert_message = []
    # 多台机器的时候处理
    for i in range(len(alerts)):
        alert = alerts[i]
        alert = eval(str(alert))
        labels = alert["labels"]
        # 报警信息
        annotations = alert["annotations"]["summary"]
        # 开始时间
        startsAt = alert["startsAt"]
        alertname = eval(str(labels))["alertname"]
        # 集群名称
        region = eval(str(labels))["Region"]

        message = "您好！您的企业" + enterprise + "，" + region + "集群的告警已触发" '\n' \
                  + "告警项: " + alertname + '\n' \
                  + "告警内容: " + annotations + '\n' \
                  + "开始时间: " + startsAt + '\n' \
                  + "您可登录AlertmanagerUrl查看: " + AlertManagerURL + '\n'
        alert_message.append(message)
    return alert_message


# 发送到微信里的函数
def send_wechat(message):
    headers = {'Content-Type': 'application/json;charset=utf-8'}
    logging.debug(message)
    body = {
        "msgtype": "text",
        "text": {
            "content": message
        }
    }
    print(str(body))
    requests.post(wechat_boot_url, json.dumps(body), headers=headers)


# AlertManager Post请求处理函数
class Connect(object):
    def on_post(self, req, resp):
        messages = req.stream.read()
        logging.debug(messages)
        try:
            messages = str(bytes.decode(messages))
            logging.debug(messages)
            messages = message_handler(messages)
            for i in range(len(messages)):
                send_wechat(str(messages[i]))
        except Exception as e:
            logging.debug(e)


app = falcon.API()
connect = Connect()
app.add_route('/connect', connect)

if __name__ == '__main__':
    httpd = simple_server.make_server('', 8000, app)
    logging.debug('Serving on port 8000')
    httpd.serve_forever()
