FROM jupyterhub/jupyterhub:1.3
COPY jupyterhub_config.py /opt/
RUN pip install jupyterhub jupyterlab -i https://mirrors.aliyun.com/pypi/simple/ \
    && useradd -m admin \ 
    && echo "admin:admin" | chpasswd \
    && apt-get update && apt-get -y install sasl2-bin libsasl2-2 libsasl2-dev libsasl2-modules gcc g++ python3-dev \
    && pip install thrift_sasl \
    && pip install impyla \
    && pip install cython \
    && pip install thriftpy \
    && pip install pandas \
    && pip install impyla 

EXPOSE 8000

VOLUME [ "/srv/jupyterhub", "/home" ]

CMD jupyterhub -f /opt/jupyterhub_config.py