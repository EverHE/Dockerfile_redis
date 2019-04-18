#!/bin/sh

conf="/etc/redis/"
#check conf file
if [ ! -f "$conf"redis.conf ] || [ ! -f "$conf"sentinel.conf ]; then
  echo "conf not exist,plase set redis.conf/sentinel.conf to /etc/redis/"
  exit
fi
  redis-server /etc/redis/redis.conf
  redis-sentinel /etc/redis/sentinel.conf
