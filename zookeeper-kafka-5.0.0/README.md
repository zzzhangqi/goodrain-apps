## kafka、zookeeper、kafka-manager
### 1. 构建zookeeper
```shell
docker build -t registry.cn-hangzhou.aliyuncs.com/zqqq/zookeeper:5.0.0 zookeeper/
```
### 2. 构建kafka
```shell
docker build -t registry.cn-hangzhou.aliyuncs.com/zqqq/kafka:5.0.0 kafka/
```
* 修改了rainbond获取自动获取zookeeper集群地址脚本
```shell
if [ ! -n ${DEPEND_SERVICE-} ]; then
   echo "there is no zookeepers on my back... exiting"
   exit 1
else    
   zks=$(nslookup ${DEPEND_SERVICE%:*} | grep Address | sed '1d' | awk '{print $2":2181"}')
   export KAFKA_ZOOKEEPER_CONNECT=$(echo $zks | tr ' ' ',')
fi
```
### 3. 构建kafka-manager
```shell
docker build -t registry.cn-hangzhou.aliyuncs.com/zqqq/kafka-manager:latest .
```