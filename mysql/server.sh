#!/bin/bash
echo '开始监听...'
sleep 5
echo 'sleep over'
nc -lk 0.0.0.0 3306
