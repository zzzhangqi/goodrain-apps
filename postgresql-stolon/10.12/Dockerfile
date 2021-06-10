FROM sorintlab/stolon:v0.16.0-pg10

ENV PGDATA=/var/lib/postgresql/data

COPY docker-entrypoint.sh /usr/local/bin

RUN apt-get update && apt -y install dnsutils