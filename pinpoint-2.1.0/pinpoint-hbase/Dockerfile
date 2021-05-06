FROM java:8-jdk

# LABEL maintainer="Roy Kim <roy.kim@navercorp.com>"

# ARG PINPOINT_VERSION=${PINPOINT_VERSION:-2.1.0}

# ENV HBASE_REPOSITORY=http://apache.mirrors.pair.com/hbase
# ENV HBASE_SUB_REPOSITORY=http://archive.apache.org/dist/hbase

# ENV HBASE_VERSION=1.2.6
# ENV BASE_DIR=/opt/hbase
# ENV HBASE_HOME=${BASE_DIR}/hbase-${HBASE_VERSION}


COPY hbase-site.xml hbase-site.xml
COPY hbase-env.sh hbase-env.sh
COPY /build/scripts/initialize-hbase.sh /usr/local/bin/
COPY /build/scripts/check-table.sh /usr/local/bin/
COPY hbase-create.hbase /opt/hbase/
COPY hbase-1.2.6-bin.tar.gz /opt/hbase/

RUN chmod a+x /usr/local/bin/initialize-hbase.sh \
    && chmod a+x /usr/local/bin/check-table.sh \
    && mkdir -p /opt/hbase \
    && cd /opt/hbase \
    # && curl -fSL "${HBASE_REPOSITORY}/${HBASE_VERSION}/hbase-${HBASE_VERSION}-bin.tar.gz" -o hbase.tar.gz || curl -fSL "${HBASE_SUB_REPOSITORY}/${HBASE_VERSION}/hbase-${HBASE_VERSION}-bin.tar.gz" -o hbase.tar.gz \
    && tar xfvz hbase-1.2.6-bin.tar.gz \
    && mv ../../hbase-site.xml ../../opt/hbase/hbase-1.2.6/conf/hbase-site.xml \
    && mv ../../hbase-env.sh ../../opt/hbase/hbase-1.2.6/conf/hbase-env.sh 
    # && curl -SL "https://raw.githubusercontent.com/naver/pinpoint/v${PINPOINT_VERSION}/hbase/scripts/hbase-create.hbase" -o ${BASE_DIR}/hbase-create.hbase 


EXPOSE 60000 16010 60020 2181

VOLUME ["/home/pinpoint/hbase", "/home/pinpoint/zookeeper"]

CMD /usr/local/bin/initialize-hbase.sh && tail -f /opt/hbase/hbase-1.2.6/logs/*
