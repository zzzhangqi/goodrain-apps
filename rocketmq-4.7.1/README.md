## rocketmq cluster
[参考文档](https://rocketmq-1.gitbook.io/rocketmq-connector/quick-start/qian-qi-zhun-bei/ji-qun-huan-jing)
### 1.构建基础broker镜像
```shell
docker build -t registry.cn-hangzhou.aliyuncs.com/zqqq/rocketmq-base:4.7.1 broker-base/
```
### 2.构建broker-nameserv
> 在Rainbond更改组件类型为有状态多组件
```shell
docker build -t registry.cn-hangzhou.aliyuncs.com/zqqq/rocketmq-nameserv:4.7.1 broker-nameserv/
```
### 3.构建broker-master
> 在Rainbond更改组件类型为有状态多组件
```shell
docker build -t registry.cn-hangzhou.aliyuncs.com/zqqq/rocketmq-broker-master:4.7.1 broker-master/
```
* 在启动脚本中增加了Rainbond获取依赖组件信息变量，即本章中 master需要获取nameserv ip
```shell
if [ ! -n ${DEPEND_SERVICE-} ]; then
   echo "there is no nameserv on my back... exiting"
   exit 1
else    
   nameser=$(nslookup ${DEPEND_SERVICE%:*} | grep Address | sed '1d' | awk '{print $2":9876"}')
   export NAMESRV_ADDR=$(echo $nameser | tr ' ' ';')
fi
```
### 4.构建broker-slave
* 使用broker-master镜像，更改环境变量:  
> 在Rainbond更改组件类型为有状态多组件
```shell
BROKER_ID=1  
BROKER_ROLE=SLAVE
```
### 5.构建broker-console
```shell
docker build -t registry.cn-hangzhou.aliyuncs.com/zqqq/rocketmq-broker-console:4.7.1 broker-console/
```
* 默认写死了 rocketmq.config.namesrvAddr 部署在rainbond无需修改  
如需修改，请修改 broker-console/src/main/resources/application.properties文件里的rocketmq.config.namesrvAddr字段
* 设置环境变量：`USER_LOGIN_ENABLE=true` 开启用户登录
* 默认用户：admin
* 默认密码：admin，可通过环境变量 `CONSOLE_ADMIN_PASSWORD=xxx` 修改密码。
* 可通过环境变量 `CONSOLE_USERNAME` `CONSOLE_PASSWORD` 设置普通用户密码。
