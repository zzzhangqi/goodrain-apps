### Alertmanager微信机器人webhook通知

* alertmanager配置webhook
    ```yaml
    global:
    resolve_timeout: 30s
    route:
    receiver: webhook
    group_wait: 30s
    group_interval: 30s
    repeat_interval: 30s
    group_by: [alertname]
    routes:
    - receiver: webhook
        group_wait: 10s
    receivers:
    - name: webhook
    webhook_configs:
    - url: http://127.0.0.1:8000/send  
        send_resolved: true
    ```
* 使用
    ```shell
    docker run -d -p 8000:8000 -e Wechat_WebHook_URL=xxx registry.cn-hangzhou.aliyuncs.com/zqqq/alert-wechat-webhook:latest
    ```
* 支持post请求
    ```shell
    docker run -d -p 8000:8000 -e Wechat_WebHook_URL=xxx registry.cn-hangzhou.aliyuncs.com/zqqq/alert-wechat-webhook:post
    ```
* 环境变量说明  
Wechat_WebHook_URL： 微信机器人URL
