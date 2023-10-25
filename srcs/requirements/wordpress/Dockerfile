FROM debian:buster

RUN apt-get update && apt-get install -y wordpress php7.3-fpm php-curl php-gd php-intl \
    php-mbstring php-soap php-xml php-xmlrpc php-zip && mkdir -p /run/php/ curl vim && \
    chown www-data:www-data /run/php/ && chmod 755 /run/php/
COPY www.conf /etc/php/7.3/fpm/pool.d/www.conf
EXPOSE 9000

CMD ["/usr/sbin/php-fpm7.3", "-F"]