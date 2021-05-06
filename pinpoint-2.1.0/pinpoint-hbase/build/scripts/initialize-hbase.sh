#!/bin/bash

ZOOKEEPER_ADDRESS=${ZK_ADDRESS}
if [ -z $DEPEND_SERVICE ]; then
    # If there is no dependency, the zk connection address is the variable ZK_ADDRESS
    sed -i "s/zk/$ZOOKEEPER_ADDRESS/g" /opt/hbase/hbase-1.2.6/conf/hbase-site.xml
    /opt/hbase/hbase-1.2.6/bin/start-hbase.sh
    /usr/local/bin/check-table.sh
else    
    # ZOOKEEPER_ADDRESS=$(nslookup ${DEPEND_SERVICE%:*} | grep Address | sed -n 2p | awk '{print $2}')
    # sed -i "s/zk/$ZOOKEEPER_ADDRESS/g" /opt/hbase/hbase-1.2.6/conf/hbase-site.xml
    /zookeeper/zookeeper-3.4.0/bin/zkServer.sh start
    /opt/hbase/hbase-1.2.6/bin/start-hbase.sh
    /usr/local/bin/check-table.sh
fi