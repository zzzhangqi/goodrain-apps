FROM rabbitmq:3.7
COPY conf/enabled_plugins /etc/rabbitmq
COPY conf/rabbitmq.conf /etc/rabbitmq
ENV TCP_PORTS=15672,5672 RABBITMQ_ERLANG_COOKIE="mycookie"
VOLUME [ "/var/lib/rabbitmq" ]
EXPOSE 15672 5672 5671 15671 