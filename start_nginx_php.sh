#docker run -dit --net host -p 8080:8080 -p 444:444 -v /data/logs/:/data/logs -v /data/htdocs:/data/htdocs -v /data/nginx-php/nginx/:/data/nginx/ -v /data/nginx-php/php/:/data/php/ docker.io/w303972870/nginx-php
docker run -dit --net host -p 8080:8080 -p 444:444  --restart always --name openresty-php -v /data/logs/:/data/logs -v /data/htdocs:/data/htdocs -v /data/nginx-php/nginx/:/data/nginx/ -v /data/nginx-php/php/:/data/php/ docker.io/w303972870/openresty-php

