chmod 644 /data/keepalived/conf/keepalived.conf && docker run -dit --net host --privileged -v /data/keepalived/:/data/ --restart always --name keepalived docker.io/w303972870/keepalived

