FROM wodby/drupal-php:7.0

COPY drupal-composer /var/www/html

RUN chown -R www-data:www-data /var/www/html/ && \
    su-exec www-data composer require && \
    su-exec www-data composer clear-cache
