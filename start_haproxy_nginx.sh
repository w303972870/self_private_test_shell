docker run -dit  --net host --privileged -p 81:81 -p 8080:8080  -v /data/haproxy-nginx/:/data/ docker.io/w303972870/haproxy

