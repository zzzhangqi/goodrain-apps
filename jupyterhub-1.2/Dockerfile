FROM registry.cn-hangzhou.aliyuncs.com/zqqq/jupyterhub:1.2
COPY jupyterhub_config.py /opt/
RUN apt-get update && apt -y install gcc g++ libsasl2-dev python3-dev \
    && pip install jupyterhub jupyterlab -i https://mirrors.aliyun.com/pypi/simple/ \
    && pip install cython \
    && pip install bit_array pure-sasl impyla thriftpy pandas \
    && pip install thrift_sasl==0.2.1 --no-deps \
    && useradd -m admin \ 
    && echo "admin:admin" | chpasswd

EXPOSE 8000

VOLUME [ "/srv/jupyterhub", "/home" ]

CMD jupyterhub -f /opt/jupyterhub_config.py