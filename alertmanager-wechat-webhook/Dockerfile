FROM python:3.8-slim

ADD . /opt
WORKDIR /opt

RUN pip config set global.index-url https://mirrors.aliyun.com/pypi/simple/ \
    && pip install requests flask \
    && ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

ENV TZ=Asia/Shanghai Wechat_WebHook_URL=xxx

EXPOSE 8000

CMD python -u main.py