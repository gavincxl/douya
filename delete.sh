#!/bin/sh
starttime=`date +'%Y-%m-%d %H:%M:%S'`
yum install rsync -y && mkdir -p /tmp/test &&  rsync -a --delete /tmp/test/ /home/data/www/ipos/temp/ && rsync -a --delete /tmp/test/ /home/data/www/ipos/logs/;
endtime=`date +'%Y-%m-%d %H:%M:%S'`
start_seconds=$(date --date="$starttime" +%s);
end_seconds=$(date --date="$endtime" +%s);
echo "本次运行时间： "$((end_seconds-start_seconds))"s"
