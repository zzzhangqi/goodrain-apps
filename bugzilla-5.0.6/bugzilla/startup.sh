#!/bin/bash
data=/var/lib/bugzilla/data
graphs=/var/lib/bugzilla/graphs

if [ "`ls -A ${data}`" = "" ]; then 
    if [ "`ls -A ${graphs}`" = "" ]; then 
        httpd && cd /usr/share/bugzilla && ./checksetup.pl && tail -f /etc/httpd/logs/*
    fi
else
    echo "${data} ${graphs} ·········is ·······not ········empty···········"
    httpd && tail -f /etc/httpd/logs/*
fi
