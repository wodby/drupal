FROM wodby/drupal-php:5.6

RUN chown -R www-data:www-data /var/www/html/ && \
    su-exec www-data composer create-project drupal-composer/drupal-project:7.x-dev /var/www/html \
        --stability dev --no-interaction && \
    su-exec www-data composer clear-cache
