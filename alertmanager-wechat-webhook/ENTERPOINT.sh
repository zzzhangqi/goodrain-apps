#!/bin/sh
nohup python /opt/main.py &
tail -f /opt/webhook.log