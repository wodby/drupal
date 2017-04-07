FROM wodby/drupal-php:7.0

RUN chown -R www-data:www-data /var/www/html/ && \
    su-exec www-data composer create-project drupal-composer/drupal-project:8.x-dev /var/www/html \
        --stability dev --no-interaction && \
    su-exec www-data composer clear-cache
