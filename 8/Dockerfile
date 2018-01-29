ARG FROM_TAG

FROM wodby/drupal-php:${FROM_TAG}

ENV DOCROOT_SUBDIR="web" \
    APP_NAME="Drupal 8"

USER root

RUN set -ex; \
    mv /usr/local/bin/actions.mk /usr/local/bin/drupal-php.mk; \
    mkdir /usr/src/drupal; \
    chown www-data:www-data /usr/src/drupal; \
    su-exec www-data composer create-project drupal-composer/drupal-project:8.x-dev /usr/src/drupal \
        --stability dev --no-interaction; \
    echo "$(cat /etc/sudoers.d/www-data), /usr/local/bin/init.sh" > /etc/sudoers.d/www-data; \
    su-exec www-data composer clear-cache

USER www-data

COPY settings.php.tpl /etc/gotpl/
COPY init /docker-entrypoint-init.d/
COPY actions /usr/local/bin/