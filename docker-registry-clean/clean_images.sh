#!/bin/sh
helpdoc(){
    cat <<EOF

Option:

    -b    --hub     registry url + port
    -r    --repos   registry repos
    -u    --user    registry user
    -p    --passwd  registry passwd
EOF
}


# 若无指定任何参数则输出帮助文档
if [ $# = 0 ]; then
    hub_url=`kubectl get svc rbd-hub -n rbd-system | awk '{print $3}' | grep -v CLUSTER-IP`
    repos_list=`cd /opt/rainbond/data/nfs/$(kubectl get pvc rbd-hub -n rbd-system | awk '{print $3}' | grep -v VOLUME)/docker/registry/v2/repositories && ls -d *`
    username=`kubectl get rainbondcluster -n rbd-system -o yaml|grep username | grep -v {} | awk '{print $2}'`
    password=`kubectl get rainbondcluster -n rbd-system -o yaml|grep password | grep -v {} | awk '{print $2}'`
    docker run --rm registry.cn-hangzhou.aliyuncs.com/zqqq/docker-registry-clean:latest -b http://$hub_url:5000 -r $repos_list -u $username -p $password
    kubectl exec $(kubectl get pod -n rbd-system | grep rbd-hub | awk '{print $1}') -n rbd-system registry garbage-collect /etc/docker/registry/config.yml
    exit 1
fi

while getopts "hb:r:u:p:" opt
do
    case $opt in
        h)
            helpdoc
            exit 0
            ;;
        b)
            hub_op=$OPTARG
            ;;
        r)
            repos_op=$OPTARG
            ;;
        u)
            username_op=$OPTARG  
            ;;
        p)
            password_op=$OPTARG  
            ;;
        ?)
            echo "Unknown option: $opt"
            helpdoc
            exit 1
            ;;
    esac
done

if [ -n "$hub_op" ] && [ -n "$repos_op" ] && [ -n "$username_op" ] && [ -n "$password_op" ];then
    docker run --rm registry.cn-hangzhou.aliyuncs.com/zqqq/docker-registry-clean:latest -b $hub_op -r $repos_op -u $username_op -p $password_op
    kubectl exec $(kubectl get pod -n rbd-system | grep rbd-hub | awk '{print $1}') -n rbd-system registry garbage-collect /etc/docker/registry/config.yml
else
    helpdoc
    exit 1
fi