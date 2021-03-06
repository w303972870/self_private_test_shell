source /root/shell/.env
if [[ $IP == "192.168.12.2" ]]; then
    sed -i "s|safe_to_bootstrap: 0|safe_to_bootstrap: 1|" /data/mariadb-galera/database/grastate.dat 
    docker run -dit -p 3306:3306 --net host -p 4567:4567 -p 4568:4568 -p 4444:4444  --restart always --name mariadb -v /data/mariadb-galera/:/data/ -v /etc/localtime:/etc/localtime -e MYSQL_ROOT_HOST=172.17.0.% -e MYSQL_ROOT_PASSWORD=123456 -e WSREP_NEW_CLUSTER=yes  docker.io/w303972870/mariadb-galera
else
    docker run -dit -p 3306:3306 --net host -p 4567:4567 -p 4568:4568 -p 4444:4444  --restart always --name mariadb -v /data/mariadb-galera/:/data/  -v /etc/localtime:/etc/localtime -e MYSQL_ROOT_HOST=172.17.0.% -e MYSQL_ROOT_PASSWORD=123456 -e SKIP_INIT_SCRIPT=yes  docker.io/w303972870/mariadb-galera
fi
