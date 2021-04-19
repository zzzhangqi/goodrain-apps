# 适用于Rainbond

### 构建pxc-db 

* 在Rainbond中以镜像方式构建组件，修改组件类型为有状态多实例，实例数量为3
* 必须指定环境变量`MYSQL_ROOT_PASSWORD`设置mysql密码

```shell
registry.cn-hangzhou.aliyuncs.com/zqqq/percona-xtradb-cluster-rbd:5.7
```

### 构建haproxy

* 在Rainbond中以镜像方式构建组件，依赖pxc-db，修改组件类型为有状态多实例，实例数量为3

```shell
registry.cn-hangzhou.aliyuncs.com/zqqq/percona-xtradb-cluster-haproxy-rbd:latest
```


