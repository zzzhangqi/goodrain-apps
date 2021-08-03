#!/bin/bash

set -o errexit
set -o nounset
set -o pipefail
# set -o xtrace # Uncomment this line for debugging purposes

if [[ "$MONGODB_SHARDING_MODE" = "mongos" ]]; then
    export MONGODB_CFG_PRIMARY_HOST=$(nslookup ${DEPEND_SERVICE%:*} | grep Name | awk '{print $2}' | cut -d . -f -1 | sort --version-sort -r | uniq)
fi

if [[ "$MONGODB_SHARDING_MODE" = "shardsvr" ]]; then
    export MONGODB_MONGOS_HOST=$(nslookup ${DEPEND_SERVICE%:*} | grep Name | awk '{print $2}' | cut -d . -f -1 | sort --version-sort -r | uniq)
fi

if [[ "$MONGODB_REPLICA_SET_MODE" = "secondary" ]]; then
    export MONGODB_PRIMARY_HOST=$(nslookup ${DEPEND_SERVICE%:*} | grep Name | awk '{print $2}' | cut -d . -f -1 | sort --version-sort -r | uniq)
fi

export MONGODB_ADVERTISED_HOSTNAME=$HOSTNAME.$SERVICE_NAME