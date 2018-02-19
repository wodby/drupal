ARG BASE_IMAGE_TAG

FROM wodby/drupal-php:${BASE_IMAGE_TAG}

ENV DOCROOT_SUBDIR="web" \
    APP_NAME="Drupal 8"

USER root

RUN set -ex; \
    \
    mv /usr/local/bin/actions.mk /usr/local/bin/drupal-php.mk; \
    mkdir /usr/src/drupal; \
    chown wodby:wodby /usr/src/drupal; \
    \
    su-exec wodby composer create-project drupal-composer/drupal-project:8.x-dev /usr/src/drupal \
        --stability dev --no-interaction; \
    \
    if [[ -z "${PHP_DEV}" ]]; then \
        echo "$(cat /etc/sudoers.d/wodby), /usr/local/bin/init" > /etc/sudoers.d/wodby; \
    fi; \
    \
    su-exec wodby composer clear-cache

USER wodby

COPY settings.php.tpl /etc/gotpl/
COPY init /docker-entrypoint-init.d/
COPY bin /usr/local/bin/