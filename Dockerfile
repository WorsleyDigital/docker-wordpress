# version: 20220419
FROM wordpress:fpm
RUN pecl install redis && docker-php-ext-enable redis

