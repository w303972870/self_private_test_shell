docker run -dit -p 9000:9000  --privileged  --net host -v /data/htdocs:/data/htdocs -v /data/php/logs:/data/php/logs -v /data/php/etc/php-fpm.d/www.conf:/etc/php7/php-fpm.d/www.conf docker.io/w303972870/php

