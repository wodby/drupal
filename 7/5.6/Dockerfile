FROM wodby/drupal-php:5.6

RUN su-exec www-data mkdir /usr/src/drupal && \
    su-exec www-data composer create-project drupal-composer/drupal-project:7.x-dev /usr/src/drupal \
        --stability dev --no-interaction && \
    su-exec www-data composer clear-cache

COPY init /docker-entrypoint-init.d/
