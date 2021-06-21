FROM registry.cn-hangzhou.aliyuncs.com/zqqq/rocketmq-base:4.7.1
EXPOSE 9876
VOLUME [ "/opt/rocketmq/logs" ]
CMD cd ${ROCKETMQ_HOME}/bin \
 && export JAVA_OPT=" -Duser.home=/opt" \
 && sh mqnamesrv