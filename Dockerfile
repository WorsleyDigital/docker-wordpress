# version: 20230515
FROM wordpress:fpm
RUN pecl install redis && docker-php-ext-enable redis

# Add WP-CLI
ENV WORDPRESS_CLI_VERSION 2.7.1
RUN curl -o /usr/local/bin/wp-cli -fL "https://github.com/wp-cli/wp-cli/releases/download/v${WORDPRESS_CLI_VERSION}/wp-cli-${WORDPRESS_CLI_VERSION}.phar" && chmod +x /usr/local/bin/wp-cli
COPY wp-cli-root /usr/local/bin/wp
RUN wp --version
