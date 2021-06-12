#!/bin/sh

CLUSTER=${SERVICE_NAME}-0=http://${SERVICE_NAME}-0.${SERVICE_NAME}.${TENANT_ID}.svc.cluster.local:2380,${SERVICE_NAME}-1=http://${SERVICE_NAME}-1.${SERVICE_NAME}.${TENANT_ID}.svc.cluster.local:2380,${SERVICE_NAME}-2=http://${SERVICE_NAME}-2.${SERVICE_NAME}.${TENANT_ID}.svc.cluster.local:2380

/usr/local/bin/etcd \
  --data-dir=/etcd-data --name ${HOSTNAME} \
  --initial-advertise-peer-urls http://${HOSTNAME}.${SERVICE_NAME}.${TENANT_ID}.svc.cluster.local:2380 \
  --listen-peer-urls http://0.0.0.0:2380 \
  --advertise-client-urls http://${HOSTNAME}.${SERVICE_NAME}.${TENANT_ID}.svc.cluster.local:2379 \
  --listen-client-urls http://0.0.0.0:2379 \
  --initial-cluster ${CLUSTER} \
  --initial-cluster-state new \
  --initial-cluster-token token

