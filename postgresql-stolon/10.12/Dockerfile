FROM sorintlab/stolon:v0.16.0-pg10

ENV PGDATA=/var/lib/postgresql/data

COPY docker-entrypoint.sh /usr/local/bin

RUN sed -i "s@http://ftp.debian.org@https://repo.huaweicloud.com@g" /etc/apt/sources.list \
    && sed -i "s@http://security.debian.org@https://repo.huaweicloud.com@g" /etc/apt/sources.list \
    && apt-get install apt-transport-https ca-certificates \
    && apt-get update && apt -y install dnsutils