#!/bin/bash
  
ZOOKEEPER_ADDRESS=$(nslookup ${DEPEND_SERVICE%:*} | grep Address | sed -n 2p | awk '{print $2}')
sed -i "s/zk/$ZOOKEEPER_ADDRESS/g" /opt/hbase/hbase-1.6.0/conf/hbase-site.xml
/opt/hbase/hbase-1.6.0/bin/start-hbase.sh
#/usr/local/bin/check-table.sh
