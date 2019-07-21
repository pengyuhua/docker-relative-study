#!/bin/bas
echo '自定义shell执行开始...'
echo 'sql do'
mysql -u root -proot <<EOF
source $WORK_PATH/$INSTALL_DB_SQL_O1;
source $WORK_PATH/$INSTALL_DB_SQL_O2;
EOF
echo 'sql 执行结束'
