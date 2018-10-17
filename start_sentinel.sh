docker run -dit -p 26379:26379 --name sentinel_26379 -v /data/redis/logs:/data/redis/logs/ --net host -e START=sentinel --privileged -v /data/redis/sentinel.conf:/data/redis/sentinel.conf  registry.cn-hangzhou.aliyuncs.com/server_repertory/redis:latest

