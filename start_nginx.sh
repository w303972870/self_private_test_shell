docker run -dit -p 80:80 -p 443:443  --privileged  --net host -v /data/nginx/conf/pangu_params:/etc/nginx/pangu_params -v /data/nginx/conf/cert:/etc/nginx/cert -v /data/nginx/conf/hc_ssl_params:/etc/nginx/hc_ssl_params -v /data/htdocs:/data/htdocs -v /data/nginx/logs:/var/log/nginx -v /data/nginx/conf/nginx.conf:/etc/nginx/nginx.conf -v /data/nginx/conf/include:/etc/nginx/conf.d docker.io/w303972870/tenginx

