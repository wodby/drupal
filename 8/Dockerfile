ARG BASE_IMAGE_TAG

FROM wodby/drupal-php:${BASE_IMAGE_TAG}

ARG DRUPAL_VER

ENV DRUPAL_VER="${DRUPAL_VER}" \
    DOCROOT_SUBDIR="web" \
    APP_NAME="Drupal 8"

USER root

RUN set -ex; \
    \
    mv /usr/local/bin/actions.mk /usr/local/bin/drupal-php.mk; \
    mkdir /usr/src/drupal; \
    chown wodby:wodby /usr/src/drupal; \
    \
    su-exec wodby composer create-project drupal-composer/drupal-project:8.x-dev /usr/src/drupal \
        --stability dev --no-interaction --no-install; \
    \
    cd /usr/src/drupal; \
    # Install specific Drupal version.
    sed -E -i 's#"drupal\/core":.+?8\..+?",?#"drupal/core": "'"${DRUPAL_VER}"'",#' composer.json; \
    su-exec wodby composer install; \
    \
    if [[ -z "${PHP_DEV}" ]]; then \
        echo "$(cat /etc/sudoers.d/wodby), /usr/local/bin/init" > /etc/sudoers.d/wodby; \
    fi; \
    \
    su-exec wodby composer clear-cache

USER wodby

COPY templates/settings.php.tmpl /etc/gotpl/
COPY init /docker-entrypoint-init.d/
COPY bin /usr/local/bin/