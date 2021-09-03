FROM mysql:8
COPY mysqld.cnf /etc/mysql/mysql.conf.d/
COPY logi_kafka_manager.sql /docker-entrypoint-initdb.d
ENV MYSQL_ROOT_PASSWORD=root MYSQL_DATABASE=logi_kafka_manager
EXPOSE 3306
VOLUME ["/var/lib/mysql"]