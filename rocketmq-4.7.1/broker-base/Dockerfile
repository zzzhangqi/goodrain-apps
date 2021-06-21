FROM centos:7

RUN yum install -y java-1.8.0-openjdk-headless unzip gettext nmap-ncat openssl dos2unix bind-utils \
 && yum clean all -y

ARG version=4.7.1

# Rocketmq version
ENV ROCKETMQ_VERSION ${version}

# Rocketmq home
ENV ROCKETMQ_HOME  /opt/rocketmq-${ROCKETMQ_VERSION}

RUN mkdir -p \
 /opt/rocketmq/logs \
 /opt/rocketmq/store

# 
# get the version
RUN curl http://ftp.cuhk.edu.hk/pub/packages/apache.org/rocketmq/${ROCKETMQ_VERSION}/rocketmq-all-${ROCKETMQ_VERSION}-bin-release.zip -o /opt/rocketmq-all-${ROCKETMQ_VERSION}-bin-release.zip \
 && unzip -d /opt /opt/rocketmq-all-${ROCKETMQ_VERSION}-bin-release.zip \
 && mv /opt/rocketmq-all-${ROCKETMQ_VERSION}-bin-release ${ROCKETMQ_HOME} \
 && rm -rf /opt/rocketmq-all*

# add scripts
COPY runbroker.sh ${ROCKETMQ_HOME}/bin/
COPY runserver.sh ${ROCKETMQ_HOME}/bin/
COPY to_bytes.gawk ${ROCKETMQ_HOME}/bin/

WORKDIR ${ROCKETMQ_HOME}/bin/

VOLUME /opt/logs/rocketmqlogs /opt/rocketmq/store
