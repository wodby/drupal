FROM wodby/drupal-php:7.1

RUN mkdir /usr/src/drupal && \
    chown www-data:www-data /usr/src/drupal && \
    su-exec www-data composer create-project drupal-composer/drupal-project:7.x-dev /usr/src/drupal \
        --stability dev --no-interaction && \
    su-exec www-data composer clear-cache

COPY init /docker-entrypoint-init.d/
