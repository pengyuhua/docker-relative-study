#!/bin/sh
echo -e "开始执行build.sh \n"
echo 'web程序环境搭建准备中...'
echo -e "当前目录  \n"
pwd
echo -e "打包Springboot项目中... \n"
#使用mvn 打包springboot项目
#mvn clean package
echo -e "项目打包完成! \n"
echo -e "复制文件中：\n"
cd springboot/target/
echo -e "当前目录  \n"
pwd
echo -e "当前目录所含文件：  \n"
ls -al
echo -e "移动文件中:"
#强制移动文件不提示
cp -f springboot-0.0.1-SNAPSHOT.jar ../../java
echo "查看文件:"
cd ../../java
echo "当前目录:"
pwd
echo -e "当前目录所含文件：  \n"
ls -l
cd ..
echo '打包Springboot项目完成!'
echo '开始构建数据库环境。。。'
pwd
docker build -t mysql_pyh:v1 ./mysql
echo '数据库镜像打包完成!'
echo -e "build.sh 执行完成! \n"
