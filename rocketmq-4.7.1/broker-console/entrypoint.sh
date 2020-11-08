#!/bin/bash

#rainbond获取nameserv ip
# if [ ! -n ${DEPEND_SERVICE-} ]; then
#    echo "there is no nameserv on my back... exiting"
#    exit 1
# else    
#    nameser=$(nslookup ${DEPEND_SERVICE%:*} | grep Address | sed '1d' | awk '{print $2":9876"}')
#    export NAMESRV_ADDR=$(echo $nameser | tr ' ' ';')
# fi

java -jar target/rocketmq-console-ng-2.0.0.jar