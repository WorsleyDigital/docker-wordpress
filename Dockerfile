# version: 20220323
FROM wordpress:fpm
RUN pecl install redis && docker-php-ext-enable redis

