#!bin/sh
if [ ! -d /var/lib/mysql/wordpress ] ; then
service mysql start
echo "CREATE DATABASE IF NOT EXISTS wordpress;"| mysql -u root
echo "CREATE USER IF NOT EXISTS 'user'@'%' IDENTIFIED BY 'password';"| mysql -u root
echo "GRANT ALL PRIVILEGES ON wordpress.* TO 'user'@'%' WITH GRANT OPTION;"| mysql -u root
echo "FLUSH PRIVILEGES;"| mysql -u root

mysql < site.sql ; rm site.sql
service mysql stop
fi

##!bin/sh
#if [ ! -d /var/lib/mysql/wordpress ] ; then
#service mysql start
#echo "CREATE DATABASE IF NOT EXISTS $MYSQL_NAME;"| mysql -u root
#echo "CREATE USER IF NOT EXISTS '$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_PASSWORD';"| mysql -u root
#echo "GRANT ALL PRIVILEGES ON $MYSQL_NAME.* TO '$MYSQL_USER'@'%' WITH GRANT OPTION;"| mysql -u root
#echo "FLUSH PRIVILEGES;"| mysql -u root
#
#mysql < site.sql ; rm site.sql
#service mysql stop
#fi

