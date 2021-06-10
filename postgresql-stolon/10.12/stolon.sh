#!/bin/bash


if [ ! -z $DEPEND_SERVICE ]; then
    Consul0=$(nslookup ${DEPEND_SERVICE%:*} | grep Name | awk '{print $2}' | cut -d . -f -1 | sort --version-sort -r | uniq)-0.$(nslookup ${DEPEND_SERVICE%:*} | grep Name | awk '{print $2}' | sort --version-sort -r | uniq)
    Consul1=$(nslookup ${DEPEND_SERVICE%:*} | grep Name | awk '{print $2}' | cut -d . -f -1 | sort --version-sort -r | uniq)-1.$(nslookup ${DEPEND_SERVICE%:*} | grep Name | awk '{print $2}' | sort --version-sort -r | uniq)
    Consul2=$(nslookup ${DEPEND_SERVICE%:*} | grep Name | awk '{print $2}' | cut -d . -f -1 | sort --version-sort -r | uniq)-2.$(nslookup ${DEPEND_SERVICE%:*} | grep Name | awk '{print $2}' | sort --version-sort -r | uniq)
    
    
    result=$(curl -s http://127.0.0.1:8500/v1/kv/initkey)
    if [ ! -n "$result" ];then
        curl --request PUT --data @contents http://127.0.0.1:8500/v1/kv/initkey
        # Initializing the cluster
        stolonctl \
        --cluster-name=stolon-cluster \
        --store-backend=consul \
        --store-endpoints http://127.0.0.1:8500 init
    else
        echo "The cluster has been initialized"
    fi

    

	#_main "$@"
    case ${STOLON_ROLE} in
    keeper)
        gosu stolon stolon-keeper \
        --pg-listen-address ${POD_IP} \
        --pg-repl-username replication \
        --uid ${HOSTNAME} \
        --pg-su-username postgres \
        --pg-su-password ${PG_SU_PASSWORD} \
        --pg-repl-password password1 \
        --data-dir ${PGDATA} \
        --cluster-name stolon-cluster \
        --store-backend=consul \
        --store-endpoints http://$Consul0:8500,http://$Consul1:8500,http://$Consul2:8500 \
        --log-level debug
        ;;
    sentinel)
        gosu stolon stolon-sentinel --cluster-name stolon-cluster \
        --store-backend=consul \
        --store-endpoints http://$Consul0:8500,http://$Consul1:8500,http://$Consul2:8500 \
        --log-level debug
        ;;
    proxy)
        gosu stolon stolon-proxy \
        --listen-address 0.0.0.0 \
        --cluster-name stolon-cluster \
        --store-backend=consul \
        --store-endpoints http://$Consul0:8500,http://$Consul1:8500,http://$Consul2:8500 \
        --log-level info
        ;;
    *)
        echo 'Please set the role'
        exit 1
        ;;
    esac
fi