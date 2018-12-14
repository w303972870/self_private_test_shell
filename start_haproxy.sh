docker ps | grep "haproxy" | awk '{print $1}'|xargs docker stop
docker run -dit  --net host -p 16001:16001 -p 7777:7777  --privileged  --restart always --name haproxy  -v /data/haproxy/:/data/ docker.io/w303972870/haproxy

