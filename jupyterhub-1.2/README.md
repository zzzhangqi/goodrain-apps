**Rainbond 安装 jupyterhub**

* 基于dockerfile构建即可

* 镜像版本 jupyterhub/jupyterhub:1.3

* 访问地址: localhost:8000

* 默认管理账号密码: admin/admin

* 默认访问 lab ，根据 url 切换 tree

    > localhost:8000/user/admin/lab?  
    > localhost:8000/user/admin/tree?

* 持久化目录：
    * 数据目录: /srv/jupyterhub
    * 用户数据目录: /home

* 直接通过`docker run`

```shell
docker run -p 8000:8000 -d --name jupyterhub registry.cn-hangzhou.aliyuncs.com/zqqq/jupyterhub:1.3
```
