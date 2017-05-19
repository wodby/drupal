FROM wodby/drupal-php:7.0-2.3.0

RUN mv /usr/local/bin/actions.mk /usr/local/bin/drupal-php.mk && \
    mkdir /usr/src/drupal && \
    chown www-data:www-data /usr/src/drupal && \
    su-exec www-data composer create-project drupal-composer/drupal-project:7.x-dev /usr/src/drupal \
        --stability dev --no-interaction && \
    su-exec www-data composer clear-cache && \
    su-exec www-data drush @none dl registry_rebuild-7.x && \
    wget https://www.drupal.org/files/issues/DATE_RFC7231-2877243-26.patch && \
    patch -p1 < DATE_RFC7231-2877243-26.patch && \
    rm DATE_RFC7231-2877243-26.patch

COPY init /docker-entrypoint-init.d/

COPY actions /usr/local/bin/