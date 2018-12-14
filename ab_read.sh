file=$1

echo "########################原始内容################################"
cat $file
echo "########################原始内容################################"
echo
echo
echo
cp $file $file.bak

sed -i "s|Concurrency Level|并发数|" $file
sed -i "s|Time taken for tests|本次测试总共花费的时间|" $file
sed -i "s|Complete requests|本次测试总共发起的请求数量|" $file
sed -i "s|Failed requests|失败的请求数量|" $file
sed -i "s|Total transferred|从被测服务器接收到的总数据量|" $file
sed -i "s|HTML transferred|从服务器接收到的文件的总大小|" $file
sed -i "s|Requests per second|平均每秒完成的请求数即QPS|" $file
#sed -i "s|Time per request|完成一个请求所需要的时间|" $file
#sed -i "s|Time per request|服务器完成一个请求的时间|" $file
sed -i "s|Transfer rate|网络传输速度|" $file

cat $file

mv $file.bak $file
