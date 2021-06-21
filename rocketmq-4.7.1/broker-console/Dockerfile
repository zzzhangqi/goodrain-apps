FROM maven:3-jdk-8
ENV USER_LOGIN_ENABLE=true CONSOLE_ADMIN_PASSWORD=admin
WORKDIR /opt
ADD . /opt/
RUN cd /opt && \
    chmod +x entrypoint.sh && \
    mvn clean package -Dmaven.test.skip=true
EXPOSE 8080
VOLUME [ "/opt/rocketmq-console/data" ]
CMD sh entrypoint.sh