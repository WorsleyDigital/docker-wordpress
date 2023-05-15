# version: 20230515
FROM wordpress:fpm
RUN pecl install redis && docker-php-ext-enable redis

