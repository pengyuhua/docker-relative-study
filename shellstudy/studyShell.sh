#!/bin/bash

echo '你好'

echo '参数解析练习'$*''

for i in "$*" ; do
	echo $i
done

echo '参数解析练习'$@''
for i in "$@" ; do
	echo $i
done

resul01=`expr 2 + 2`
echo $resul01

read -p "请输入选项:" -n 1 -t 3 inputdata
# -e 开启转义
echo -e "\n你的所选项为$inputdata" 





