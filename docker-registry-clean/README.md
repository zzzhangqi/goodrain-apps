## 前言
rbd-hub是基于[Docker Registry](https://docs.docker.com/registry/)封装

默认rbd-hub清理策略是清理30天内未使用的镜像，这会使磁盘较小的用户堆积无用的镜像。   

因此可临时使用脚本来清理无用的镜像。

## 清理镜像

注意：无论是delete方法调用restful接口,还是registry 自带工具的GC清理,都需要registry开启允许删除功能

### 一. 开启hub删除功能

修改rbd-hub环境变量,开启删除功能 

```shell
kubectl edit rbdcomponent rbd-hub -n rbd-system
#添加环境变量
spec:
  env:
  - name: REGISTRY_STORAGE_DELETE_ENABLED
    value: "true"
  image: registry.cn-hangzhou.aliyuncs.com/goodrain/registry:2.6.2
```
修改完成后，pod会自动重启。

### 二. 使用脚本清理镜像

此脚本清理策略是保留镜像最新的两个tag  

```shell
wget https://storageclass.oss-cn-shanghai.aliyuncs.com/clean_images.sh && sh clean_images.sh
```

| 参数说明，默认自动获取 |                                |
| ---------------------- | ------------------------------ |
| -b     --hub           | registry url 默认会自动获取    |
| -r     --repos         | registry repos，默认会自动获取 |
| -u    --username       | registry 账号，默认会自动获取  |
| -p    --password       | registry 密码，默认会自动获取  |

