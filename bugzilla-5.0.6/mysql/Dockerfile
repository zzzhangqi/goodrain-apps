FROM mysql:5.7
ADD mysqld.cnf /etc/mysql/mysql.conf.d/
ADD bug.sql docker-entrypoint-initdb.d
ENV MYSQL_ROOT_PASSWORD=bug MYSQL_DATABASE=bug
VOLUME [ "/var/lib/mysql" ]
EXPOSE 3306