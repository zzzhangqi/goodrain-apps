FROM jupyterhub/jupyterhub:1.3
COPY jupyterhub_config.py /opt/
RUN pip config set global.index-url https://mirrors.aliyun.com/pypi/simple/ \
    && pip install jupyterhub jupyterlab oauthenticator \
    && apt-get update && apt-get -y install sasl2-bin libsasl2-2 libsasl2-dev libsasl2-modules gcc g++ python3-dev \
    && pip install thrift_sasl==0.2.1 --no-deps \
    && pip install impyla \
    && pip install cython \
    && pip install thriftpy \
    && pip install pandas \
    && pip install impyla \
    && pip install sklearn \
    && pip install SQLAlchemy \
    && pip install pymysql \
    && pip install matplotlib \
    && pip install seaborn \
    && pip install influxdb

EXPOSE 8000

VOLUME [ "/srv/jupyterhub", "/home" ]

CMD jupyterhub -f /opt/jupyterhub_config.py