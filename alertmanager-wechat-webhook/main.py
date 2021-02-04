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
    for alert in alerts:
        status = alert["status"]
        alertname = alert["labels"]["alertname"]
        labels = alert.get("labels")
        LabelsKeys = labels.keys()
        messages = "**" + status + "**" + "  " + alertname + '\n' + "**Labels**" + '\n'
        for LabelsKey in LabelsKeys:
            LabelsValue = labels[LabelsKey]
            messages = messages + "> " + LabelsKey + ":  " + LabelsValue + '\n'

        Annotations = alert.get("annotations")
        AnnotationsKeys = Annotations.keys()
        messages = messages + '\n' + "**Annotations**" + '\n'
        for AnnotationsKey in AnnotationsKeys:
            AnnotationsValue = Annotations[AnnotationsKey]
            messages = messages + "> " + AnnotationsKey + ":  " + AnnotationsValue + '\n'
        messages = messages + '\n' + "**AlertManager**：" + "[" + AlertManagerURL + "]" + "(" + AlertManagerURL + ")"
        alert_message.append(messages)
    return alert_message


# 发送到微信里的函数
def send_wechat(message):
    headers = {'Content-Type': 'application/json;charset=utf-8'}
    logging.debug(message)
    body = {
        "msgtype": "markdown",
        "markdown": {
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
