#!/bin/sh
echo -e "开始执行build.sh \n"
echo 'web程序环境搭建准备中...'
echo -e "当前目录：  \n"
pwd
echo -e "打包Springboot项目中... \n"
#使用mvn 打包springboot项目
mvn clean package
echo -e "项目打包完成! 复制文件中：\n"
#强制移动文件不提示 
cp -f -p springboot/target/SpringbootApp.jar java/
echo "查看文件,当前目录:"
cd java/
pwd
ls -l
cd ..
echo '打包Springboot项目完成!'
echo '开始构建数据库环境。。。'
pwd
docker build -t mysql_pyh:v1 ./mysql
echo '数据库镜像打包完成!'
