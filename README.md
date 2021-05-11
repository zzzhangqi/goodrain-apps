## PinPoint 2.1.0 

* hbase版本为 1.6.0
* 增加 hdfs作为hbase存储
  * hdfs参考 [hadoop单机搭建](https://hadoop.apache.org/docs/r2.10.1/hadoop-project-dist/hadoop-common/SingleCluster.html#Standalone_Operation)
  * hadoop 包地址：https://goodrain-pkg.oss-cn-shanghai.aliyuncs.com/apps/pinpoint/2.1.0/hadoop-2.10.1.tar.gz
* 在Rainbond中构建，提前搭建hdfs节点（有时间做个hdfs容器化），其他基于每个文件夹源码构建即可
* docker中构建，需构建出镜像