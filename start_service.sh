docker service ls | awk '{print $1}'| xargs docker service rm
\cp /root/twemproxy-sentinel/sentinel.conf /data/redis/conf/
scp /root/twemproxy-sentinel/sentinel.conf root@192.168.12.3:/data/redis/conf/
scp /root/twemproxy-sentinel/sentinel.conf root@192.168.12.4:/data/redis/conf/
docker stack deploy --compose-file /root/docker-compose.yml mysystem
