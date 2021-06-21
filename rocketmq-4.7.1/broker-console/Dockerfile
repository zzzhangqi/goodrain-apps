FROM maven:3-jdk-8
WORKDIR /opt
ADD . /opt/
RUN cd /opt && \
    chmod +x entrypoint.sh && \
    mvn clean package -Dmaven.test.skip=true
EXPOSE 8080
VOLUME [ "/opt/rocketmq-console/data" ]
CMD sh entrypoint.sh