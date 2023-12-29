
#!/bin/bash

mysqld_safe &


while ! /usr/bin/mysqladmin ping -h 'localhost' --silent; do
    echo "waiting for database ..."
    sleep 1
done

DB_EXISTS=$(mysql -u root -e "SHOW DATABASES LIKE 'wordpress';" | grep "wordpress" > /dev/null; echo "$?")
if [ $DB_EXISTS -ne 0 ]; then
    echo "Creating database..."
    mysql -u root -e "CREATE DATABASE wordpress;
    CREATE USER IF NOT EXISTS '$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_PASSWORD';
    GRANT SELECT,INSERT,UPDATE,DELETE,CREATE,DROP,ALTER
    ON wordpress.*
    TO '$MYSQL_USER'@'%';
    
    FLUSH PRIVILEGES;"
fi




