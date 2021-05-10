#!/bin/bash

if echo -e "exists 'AgentInfo'" | /opt/hbase/hbase-1.5.0/bin/hbase shell 2>&1 | grep -q "does exist" 2>/dev/null
then 
    echo "Tables already exist"
    break
else
    sleep 15        
    echo "create tables"
    /opt/hbase/hbase-1.5.0/bin/hbase shell /opt/hbase/hbase-create.hbase
fi