#!/bin/bash
set -x
cd /usr/share/wordpress
if ! $(wp core is-installed --allow-root); then
  echo "in"
    wp core install  \
        --url=$HOST_NAME \
        --title="YOUR_WORDPRESS_SITE_TITLE" \
        --admin_user="YOUR_ADMIN_USERNAME" \
        --admin_password="YOUR_ADMIN_PASSWORD" \
        --admin_email="amejia@42.fr" \
        --skip-email \
        --allow-root
fi

# start PHP-FPM
exec php-fpm7.3 -F