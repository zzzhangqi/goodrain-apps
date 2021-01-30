#!/us/bin/env python
# -*- coding:utf-8 -*-

import requests
import logging
import falcon
import json
import os
from wsgiref.simple_server import make_server

#微信机器人链接
wechat_boot_url = os.getenv("Wechat_WebHook_URL")
# 企业名称
enterprise = os.getenv("Enterprise")
# alertManager对外地址
AlertManagerURL = os.getenv("AlertManagerURL")
# 日志模块
logger = logging.getLogger()
logger.setLevel(logging.DEBUG)
fileHandler = logging.FileHandler('webhook.log', mode='w', encoding='UTF-8')
fileHandler.setLevel(logging.NOTSET)
formatter = logging.Formatter('%(asctime)s - %(name)s - %(levelname)s - %(message)s')
fileHandler.setFormatter(formatter)
logger.addHandler(fileHandler)


# 处理从alertmanager接收过来的信息
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
                  + "您可登录AlertmanagerUrl查看: " + AlertManagerURL + '\n' \

        alert_message.append(message)
    return alert_message

# 发送到微信里的函数
def send_wechat(message):
    headers = {'Content-Type': 'application/json;charset=utf-8'}
    logger.debug(message)
    body = {
        "msgtype": "text",
        "text": {
            "content": message
        }
    }
    print(str(body))
    requests.post(wechat_boot_url, json.dumps(body), headers=headers)

# alertmanager post请求处理函数
class Connect(object):
    def on_post(self, req, resp):
        messages = req.stream.read()
        logger.debug(messages)
        try:
            messages = str(bytes.decode(messages))
            logger.debug(messages)
            messages = message_handler(messages)
            for i in range(len(messages)):
                send_wechat(str(messages[i]))
        except Exception as e:
            logger.debug(e)



app = falcon.API()
connect = Connect()
app.add_route('/connect', connect)

if __name__ == '__main__':
    with make_server('', 8000, app) as httpd:
        print('Serving on port 8000')
        httpd.serve_forever()