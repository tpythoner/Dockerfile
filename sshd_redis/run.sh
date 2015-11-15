#!/bin/bash

/usr/sbin/sshd -D &

/usr/local/redis/bin/redis-server /usr/local/redis/conf/redis.conf
/bin/bash
