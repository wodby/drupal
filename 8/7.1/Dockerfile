FROM wodby/drupal-php:7.1

RUN mv /usr/local/bin/actions.mk /usr/local/bin/drupal-php.mk && \
    mkdir /usr/src/drupal && \
    chown www-data:www-data /usr/src/drupal && \
    su-exec www-data composer create-project drupal-composer/drupal-project:8.x-dev /usr/src/drupal \
        --stability dev --no-interaction && \
    su-exec www-data composer clear-cache

COPY init /docker-entrypoint-init.d/

COPY actions /usr/local/bin/
