FROM rabbitmq:3.8.17-management

ADD conf/ /etc/rabbitmq/

ENV RABBITMQ_ERLANG_COOKIE=my-cookie-123 \
    RABBITMQ_DEFAULT_USER=admin \
    RABBITMQ_DEFAULT_PASS=admin \
    RABBITMQ_USE_LONGNAME=true
    
VOLUME [ "/var/lib/rabbitmq" ]
EXPOSE 15672 5672 5671 15671 