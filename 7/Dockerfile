ARG BASE_IMAGE_TAG

FROM wodby/drupal-php:${BASE_IMAGE_TAG}

ARG DRUPAL_VER

ENV DRUPAL_VER="${DRUPAL_VER}" \
    DOCROOT_SUBDIR="web" \
    APP_NAME="Drupal 7"

USER root

RUN set -xe; \
    \
    apk add --update jq; \
    mv /usr/local/bin/actions.mk /usr/local/bin/drupal-php.mk; \
    mkdir /usr/src/drupal; \
    chown wodby:wodby /usr/src/drupal; \
    \
    su-exec wodby composer create-project drupal-composer/drupal-project:7.x-dev /usr/src/drupal \
        --stability dev --no-interaction --no-install; \
    \
    cd /usr/src/drupal; \
    # Install specific Drupal version.
    sed -E -i 's#"drupal\/drupal":.+#"drupal/drupal": "'"${DRUPAL_VER}"'",#' composer.json; \
    su-exec wodby composer install; \
    \
    # Apply patch to rederect to install.php when $databases defined.
    su-exec wodby composer require cweagans/composer-patches; \
    patch_url="https://gist.githubusercontent.com/csandanov/72d6e5d9bfd857491a87fa9131e5728c/raw/bff270bea6f5a05779a4fcd5a570dc3e36bb25ca/drupal-7-install-php-redirect.patch"; \
    jq --indent 4 '.extra.patches."drupal/drupal"."Redirect to install.php"="'${patch_url}'"' composer.json > tmp.json; \
    mv tmp.json composer.json; \
    chown wodby:wodby composer.json; \
    \
    if [[ -z "${PHP_DEV}" ]]; then \
        echo "$(cat /etc/sudoers.d/wodby), /usr/local/bin/init" > /etc/sudoers.d/wodby; \
    fi; \
    \
    apk del --purge jq; \
    su-exec wodby composer update -d /usr/src/drupal; \
    su-exec wodby composer clear-cache; \
    rm -rf /var/cache/apk/*

USER wodby

COPY init /docker-entrypoint-init.d/
COPY bin /usr/local/bin/