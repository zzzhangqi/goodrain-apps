### Alertmanager微信机器人webhook通知

* 使用
    ```
    docker run -d -p 8000:8000 -e Wechat_WebHook_URL=xxx -e Enterprise=xxx -e AlertManagerURL=xxx registry.cn-hangzhou.aliyuncs.com/zqqq/alert-wechat-webhook:latest
    ```

* 环境变量说明  
Wechat_WebHook_URL： 微信机器人URL
Enterprise： 企业名称
AlertManagerURL： AlertmanagerUI的URL
