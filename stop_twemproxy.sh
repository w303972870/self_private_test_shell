docker ps -a | grep "twemproxy" | awk '{print $1}'| xargs docker stop
