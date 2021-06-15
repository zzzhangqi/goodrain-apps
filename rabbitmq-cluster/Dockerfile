FROM rabbitmq:3.8-management
ADD conf/ /etc/rabbitmq/
COPY docker-entrypoint.sh /usr/local/bin
ENV RABBITMQ_USE_LONGNAME=true \
    RABBITMQ_ERLANG_COOKIE=my-cookie-123 \
    RABBITMQ_DEFAULT_USER=admin \
    RABBITMQ_DEFAULT_PASS=admin
VOLUME [ "/var/lib/rabbitmq" ]
EXPOSE 15672 5672 5671 15671 