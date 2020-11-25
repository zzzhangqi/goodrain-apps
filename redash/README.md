### redash 在Rainbond部署

1. 复制`rainbond-setup`文件下的`docker-compose`

2. 基于镜像创建组件 > DockerCompose

3. 等待完成即可

改动说明：
1. 修改了一些连接方式数据库和redis的连接地址为 `127.0.0.1`,这是rainbond内部通信方式。

2. 修改了nginx配置文件，详细看 nginx目录。

3. 初始化数据操作做到了镜像里详细看 pgsql目录。

### 官方提供docker-compose本地部署

* 安装`pwgen`工具，用于脚本生成密码

  ```shell
  yum -y install pwgen
  ```
* 根据官方提供脚本安装，脚本包含了安装docker，安装docker-compose，启动redash

  ```shell
  sh setup.sh
  ```

* 如环境已有docker，docker-compose，可直接启动docker-compose.yml文件

  1. 生成环境变量文件以及创建pgsql挂载目录

  ```shell
  vim setup.sh
  
  #注释最后一行的
  install_docker
  setup_compose
  ```

* 进入data目录启动 redash

  ```shell
  docker-compose up -d 
  ```

