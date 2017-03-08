FROM wodby/drupal-php:5.6-2.0.0

COPY composer.json /var/www/html

RUN chown -R www-data:www-data /var/www/html/ && \
    su-exec www-data composer require && \
    su-exec www-data composer clear-cache
