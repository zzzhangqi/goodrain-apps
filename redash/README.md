### redash rainbond部署

复制根下的`docker-compose`文件到rainbond

改动说明：
1. 修改了一些连接方式数据库和redis的连接地址为 `127.0.0.1`,这是rainbond内部通信方式。

2. 修改了nginx配置文件，详细看 nginx目录。

3. 初始化数据操作做到了镜像里详细看 pgsql目录。

### docker-compose 部署

* 直接启动，初始化数据同样做进了镜像里
```shell
docker-compose -f redash-gf/docker-compose.yml up -d
```