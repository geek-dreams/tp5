#!/bin/bash
>ip.txt

for i in {1..255}
do
{
ip=192.168.137.$i
ping -c1 -W1  $ip  &> /dev/null
if [ $? -eq 0 ] 
then
echo "$ip"  |   tee  ip.txt
fi
}&    ##后台执行
done

wait 
echo "完成查询!"