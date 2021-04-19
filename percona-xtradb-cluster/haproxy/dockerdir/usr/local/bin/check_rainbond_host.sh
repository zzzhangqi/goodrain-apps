#!/bin/bash

## Used to detect how many Nodes are available in RainBond
## zq modify in 2021-04-19

while true; do
    sleep 5
    path_to_haproxy_cfg='/etc/haproxy/pxc'
    if [ -f "$path_to_haproxy_cfg/AVAILABLE_NODES" ]; then
        AVAILABLE_NODES=$(/bin/cat $path_to_haproxy_cfg/AVAILABLE_NODES)
        CHECK_AVAILABLE_NODES=$(/usr/bin/nslookup ${DEPEND_SERVICE%:*} | /usr/bin/grep -o 'Name' | /usr/bin/wc -l)
        echo $CHECK_AVAILABLE_NODES
        if [[ "$CHECK_AVAILABLE_NODES" != "$AVAILABLE_NODES" ]]; then
            echo "The pxc number is inconsistent,again perform the script"
            /usr/bin/sh /usr/bin/add_pxc_nodes.sh
        fi
    else
        echo "Frist start,perform script"
        /usr/bin/sh /usr/bin/add_pxc_nodes.sh
    fi
done