FROM openjdk:8-jdk

# LABEL maintainer="Roy Kim <roy.kim@navercorp.com>"

# ARG PINPOINT_VERSION=${PINPOINT_VERSION:-2.1.0}
# ARG INSTALL_URL=https://github.com/naver/pinpoint/releases/download/v${PINPOINT_VERSION}/pinpoint-web-boot-${PINPOINT_VERSION}.jar

ENV JAVA_OPTS="-Dspring.profiles.active=release,batch"
ENV SPRING_PROFILES=release
ENV CLUSTER_ENABLE=true
ENV ADMIN_PASSWORD=admin
ENV CONFIG_SENDUSAGE=true
ENV LOGGING_LEVEL_ROOT=INFO
ENV CONFIG_SHOW_APPLICATIONSTAT=true
ENV BATCH_ENABLE=false 
ENV JDBC_DRIVERCLASSNAME=com.mysql.jdbc.Driver
ENV JDBC_URL=jdbc:mysql://127.0.0.1:3306/pinpoint?characterEncoding=UTF-8
ENV JDBC_USERNAME=admin
ENV JDBC_PASSWORD=admin


RUN mkdir -p /pinpoint/config \
    && mkdir -p /pinpoint/scripts

COPY /build/config/pinpoint-web.properties /pinpoint/config/
COPY /build/scripts/start-web.sh /pinpoint/scripts/
#temporary line for local test
COPY pinpoint-web-boot-2.1.0.jar /pinpoint/pinpoint-web-boot.jar
COPY sources.list /etc/apt/sources.list
COPY /build/scripts/rainbondenv /pinpoint/scripts/rainbondenv
# RUN apk --no-cache add curl \
RUN apt-get update && apt-get -y install net-tools dnsutils telnet ncat\
    && chmod a+x /pinpoint/scripts/start-web.sh \
    && chmod a+x /pinpoint/scripts/rainbondenv \
    && chmod a+x /pinpoint/config/pinpoint-web.properties
    # && curl -SL ${INSTALL_URL} -o /pinpoint/pinpoint-web-boot.jar
EXPOSE 8080 9997
#entry point to start-web.sh for future use.
# ENTRYPOINT ["sh", "/pinpoint/scripts/start-web.sh"]
CMD bash /pinpoint/scripts/rainbondenv
