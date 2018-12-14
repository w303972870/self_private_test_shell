killall pppd 

pptpsetup --create [给vpn链接起个名] --server [IP地址] --username [用户名] --password [密码] --encrypt --start && route add default dev ppp0
