docker run -dit -p 26379:26379  -p 22121:22121 -v /data/redis/:/data/ --privileged --name twemproxy-sentinel --net host -e START=both docker.io/w303972870/twemproxy-sentinel
