#!/us/bin/env python
# -*- coding:utf-8 -*-

import requests
import logging
import json
from flask import Flask
from flask import request

app = Flask(__name__)

# 微信机器人链接
wechat_boot_url = os.getenv("Wechat_WebHook_URL")
# 日志
logging.basicConfig(filename="webhook.log", level=logging.DEBUG, format='%(asctime)s %(levelname)s:%(message)s',
                    datefmt='%Y/%m/%d %I:%M:%S %p')


# AlertManager Post请求处理函数
@app.route("/send", methods=['POST'])
def Post():
    messages = request.json
    logging.debug(messages)
    try:
        logging.debug(messages)
        messages = message_handler(messages)
        for i in messages:
            send_wechat(i)
    except Exception as e:
        logging.debug(e)
    return {"data": [{"start": "start"}]}


# 处理从 AlertManager 接收过来的信息
def message_handler(message):
    alerts = message["alerts"]
    alert_message = []
    externalUrl = message["externalURL"]
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
        messages = messages + '\n' + "**AlertManager**：" + "[" + externalUrl + "]" + "(" + externalUrl + ")"
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


if __name__ == '__main__':
    app.run(
        host='0.0.0.0',
        port=8000
    )
