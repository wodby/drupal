FROM wodby/drupal-php:7.0

RUN mkdir /usr/src/drupal && \
    chown -R www-data:www-data /var/www/html/ /usr/src/drupal && \
    su-exec www-data composer create-project drupal-composer/drupal-project:8.x-dev /usr/src/drupal \
        --stability dev --no-interaction && \
    su-exec www-data composer clear-cache

COPY init /docker-entrypoint-init.d/
