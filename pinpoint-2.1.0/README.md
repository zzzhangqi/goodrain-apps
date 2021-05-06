## PinPoint 2.1.0 

### 在Rainbond中部署

1. 部署 zookeeper
   * 在Rainbond中基于镜像部署zookeeper，镜像：zookeeper:3.4

2. 部署 hbase
   * 在Rainbond中基于源码部署，依赖zookeeper
3. 部署mysql
   * 在Rainbond中基于源码部署
4. 部署 Pinpoint-web
   * 在Rainbond中基于源码部署，依赖mysql、zookeeper
5. 部署 Pinpoint-collector
   * 在Rainbond中基于源码部署，依赖 zookeeper

### 使用Docker部署

1. 创建 Docker 网络

   ```shell
   docker network create pinpoint
   ```

2. 部署 zookeeper

   ```shell
   docker run -d \
   --name zookeeper \
   --net=pinpoint \
   zookeeper:3.4
   ```

3. 部署 hbase

   ```shell
   docker run -d \
   -e ZK_ADDRESS=zookeeper \
   --name hbase \
   --net=pinpoint \
   registry.cn-hangzhou.aliyuncs.com/zqqq/pinpoint-hbase:2.1.0
   ```

4. 部署 Mysql

   ```shell
   docker run -d \
   --name mysql \
   --net=pinpoint \
   registry.cn-hangzhou.aliyuncs.com/zqqq/pinpoint-mysql:2.1.0
   ```

5. 部署 Pinpoint-web

   ```shell
   docker run -d \
   -p 8080:8080 \
   --name=pinpoint-web \
   -e JDBC_URL="jdbc:mysql://mysql:3306/pinpoint?characterEncoding=UTF-8" \
   -e ZK_ADDRESS=zookeeper \
   --net=pinpoint \
   registry.cn-hangzhou.aliyuncs.com/zqqq/pinpoint-web:2.1.0
   ```

6. 部署 Pinpoint-collector

   ```shell
   docker run -d \
   -e ZK_ADDRESS=zookeeper \
   --name=pinpoint-collector \
   -e ZK_ADDRESS=zookeeper \
   --net=pinpoint \
   registry.cn-hangzhou.aliyuncs.com/zqqq/pinpoint-collector:2.1.0
   ```

7. Volume 自定

