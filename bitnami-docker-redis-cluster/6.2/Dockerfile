FROM docker.io/bitnami/redis-cluster:6.2
COPY redis-cluster-env.sh /opt/bitnami/scripts/
ENV REDIS_PASSWORD=bitnami \
    REDIS_NODES="${SERVICE_NAME}-0.${SERVICE_NAME}.${TENANT_ID}.svc.cluster.local \
                 ${SERVICE_NAME}-1.${SERVICE_NAME}.${TENANT_ID}.svc.cluster.local \
                 ${SERVICE_NAME}-2.${SERVICE_NAME}.${TENANT_ID}.svc.cluster.local \
                 ${SERVICE_NAME}-3.${SERVICE_NAME}.${TENANT_ID}.svc.cluster.local \
                 ${SERVICE_NAME}-4.${SERVICE_NAME}.${TENANT_ID}.svc.cluster.local \
                 ${SERVICE_NAME}-5.${SERVICE_NAME}.${TENANT_ID}.svc.cluster.local"
EXPOSE 6379
VOLUME [ "/bitnami/redis/data" ]