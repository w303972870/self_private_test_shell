source /root/shell/.env

docker run -dit -p 6370:6370 -v /data/redis/:/data/ --name redis_6370 --net host -e START=redis -e REDIS_PORT=6370 --privileged -e REDIS_REQUIREPASS=123456 -e LISTION=IP docker.io/w303972870/twemproxy-sentinel

docker run -dit -p 6371:6371 -v /data/redis/:/data/ --name redis_6371 --net host -e START=redis -e REDIS_PORT=6371 --privileged -e REDIS_SLAVEOF_IP=$IP -e REDIS_SLAVEOF_PORT=6370 -e REDIS_MASTERAUTH=123456 -e REDIS_REQUIREPASS=123456 -e LISTION=IP docker.io/w303972870/twemproxy-sentinel

docker run -dit -p 6372:6372 -v /data/redis/:/data/ --name redis_6372 --net host -e START=redis -e REDIS_PORT=6372 --privileged -e REDIS_SLAVEOF_IP=$IP -e REDIS_SLAVEOF_PORT=6370 -e REDIS_MASTERAUTH=123456 -e REDIS_REQUIREPASS=123456 -e LISTION=IP docker.io/w303972870/twemproxy-sentinel


