FROM php:8.2-fpm

# Install extensions yang diperlukan Laravel
RUN apt-get update && apt-get install -y \
    git unzip libpq-dev libzip-dev libpng-dev \
    && docker-php-ext-install pdo pdo_mysql zip gd

# Install Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

WORKDIR /var/www

COPY php.ini /usr/local/etc/php/conf.d/custom.ini

CMD ["php-fpm"]
