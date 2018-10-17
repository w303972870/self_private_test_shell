/root/shell/rm_all_container.sh
source /root/shell/.env
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
