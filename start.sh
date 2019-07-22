#!/bin/bash
# import build.sh to build project's environment.
# source ./build.sh

echo "执行start.sh中。。。"
. ./build.sh
echo "build.sh文件执行完成!"

echo "启动 docker-compose服务"
docker-compose up -d --build



