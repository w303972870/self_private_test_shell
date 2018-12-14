/root/shell/rm_all_container.sh
source /root/shell/.env

ps aux | grep mongo|awk '{print $2}'|xargs kill -9

if [ $IP == "192.168.12.10" ]; then

  /usr/bin/mongod -f /data/mongodb/arbiter1/conf/mongod.arbiter1.conf
  /usr/bin/mongod -f /data/mongodb/arbiter2/conf/mongod.arbiter2.conf
  /usr/bin/mongod -f /data/mongodb/arbiter3/conf/mongod.arbiter3.conf
  /usr/bin/mongod -f /data/mongodb/arbiter4/conf/mongod.arbiter4.conf
  /usr/bin/mongod -f /data/mongodb/arbiter5/conf/mongod.arbiter5.conf
  /usr/bin/mongod -f /data/mongodb/arbiter6/conf/mongod.arbiter6.conf

else

  if [ $IP == "192.168.12.2" ]; then
      \cp /root/twemproxy-sentinel/sentinel.conf /data/redis/conf/
      scp /root/twemproxy-sentinel/sentinel.conf root@192.168.12.3:/data/redis/conf/
      scp /root/twemproxy-sentinel/sentinel.conf root@192.168.12.4:/data/redis/conf/

      \cp /root/twemproxy-sentinel/redis_master.conf /data/redis/conf/
      scp /root/twemproxy-sentinel/redis_master.conf root@192.168.12.3:/data/redis/conf/
      scp /root/twemproxy-sentinel/redis_master.conf root@192.168.12.4:/data/redis/conf/
  fi
  /root/shell/start_keepalived.sh
  /root/shell/start_redis.sh
  /root/shell/start_sentinel_twemproxy.sh
  /root/shell/start_haproxy.sh
  /root/shell/start_nginx_php.sh
  /root/shell/start_mysql.sh

  /usr/bin/mongod -f /data/mongodb/mongoconf/conf/mongod.conf.conf
  /usr/bin/mongod -f /data/mongodb/shard1/conf/mongod.shard1.conf
  /usr/bin/mongod -f /data/mongodb/shard2/conf/mongod.shard2.conf
  /usr/bin/mongod -f /data/mongodb/shard3/conf/mongod.shard3.conf
  /usr/bin/mongod -f /data/mongodb/shard4/conf/mongod.shard4.conf
  /usr/bin/mongod -f /data/mongodb/shard5/conf/mongod.shard5.conf
  /usr/bin/mongod -f /data/mongodb/shard6/conf/mongod.shard6.conf
  /usr/bin/mongos -f /data/mongodb/mongos/conf/mongod.mongos.conf
fi
