FROM sorintlab/stolon:v0.16.0-pg10

ENV PGDATA=/var/lib/postgresql/data

COPY stolon.sh /usr/local/bin

RUN apt-get update && apt -y install dnsutils curl \
    && chmod +x /usr/local/bin/stolon.sh

CMD /usr/local/bin/stolon.sh