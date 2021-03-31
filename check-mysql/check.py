#!/us/bin/env python
# -*- coding:utf-8 -*-

import pymysql
import time
import logging

logging.basicConfig(level=logging.DEBUG,
                    filename='output.log',
                    datefmt='%Y/%m/%d %H:%M:%S',
                    format='%(asctime)s - %(name)s - %(levelname)s - %(lineno)d - %(module)s - %(message)s')
logger = logging.getLogger(__name__)


def connect():
    conn = pymysql.connect(host='localhost', user='root', password='123456', db='demo', port=3306)
    return conn


c = connect()


def fun(i):
    global c
    try:
        c.ping()
        logger.info('connect-%d ok' % i)
    except:
        logger.error('connect-%d fail' % i)


i = 0
while True:
    fun(i)
    i += 1
    time.sleep(1)
