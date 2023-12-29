#!/bin/bash
set -x
cd /usr/share/wordpress
if ! $(wp core is-installed --allow-root); then
  echo "in"
    wp core install  \
        --url=$HOST_NAME \
        --title="A Blog about You" \
        --admin_user="$WP_USER" \
        --admin_password="$WP_PASSWORD" \
        --admin_email="$WP_EMAIL" \
        --skip-email \
        --allow-root
fi

# start PHP-FPM
exec php-fpm7.3 -F