FROM python:3.6-slim

ADD . /opt
WORKDIR /opt

RUN pip config set global.index-url https://mirrors.aliyun.com/pypi/simple/ \
    && pip install requests falcon

ENV Wechat_WebHook_URL=xxx Enterprise=xxx AlertManagerURL=xxx

EXPOSE 8000

CMD python /opt/main.py