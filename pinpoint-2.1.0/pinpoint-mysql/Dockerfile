FROM registry.cn-hangzhou.aliyuncs.com/zqqq/mysql:5.7

ENV MYSQL_ROOT_PASSWORD=root123 MYSQL_USER=admin MYSQL_PASSWORD=admin MYSQL_DATABASE=pinpoint

COPY sources.list /etc/apt/sources.list

COPY CreateTableStatement-mysql.sql /docker-entrypoint-initdb.d/CreateTableStatement-mysql.sql
COPY SpringBatchJobRepositorySchema-mysql.sql /docker-entrypoint-initdb.d/SpringBatchJobRepositorySchema-mysql.sql

RUN apt update \ 
	&& apt-get install -y --no-install-recommends ca-certificates wget \
	&& sed -i '/^--/d' /docker-entrypoint-initdb.d/CreateTableStatement-mysql.sql \
	&& sed -i '/^--/d' /docker-entrypoint-initdb.d/SpringBatchJobRepositorySchema-mysql.sql \
	&& apt-get purge -y --auto-remove ca-certificates wget

EXPOSE 3306 33060

VOLUME ["/var/lib/mysql"]