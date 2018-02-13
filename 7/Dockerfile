ARG BASE_IMAGE_TAG

FROM wodby/drupal-php:${BASE_IMAGE_TAG}

ENV DOCROOT_SUBDIR="web" \
    APP_NAME="Drupal 7"

USER root

RUN set -xe; \
    \
    mv /usr/local/bin/actions.mk /usr/local/bin/drupal-php.mk; \
    mkdir /usr/src/drupal; \
    chown wodby:wodby /usr/src/drupal; \
    \
    su-exec wodby composer create-project drupal-composer/drupal-project:7.x-dev /usr/src/drupal \
        --stability dev --no-interaction; \
    \
    # Apply patch to rederect to install.php when $databases defined.
    apk add --update jq; \
    cd /usr/src/drupal; \
    su-exec wodby composer require cweagans/composer-patches; \
    patch_url="https://gist.githubusercontent.com/csandanov/72d6e5d9bfd857491a87fa9131e5728c/raw/bff270bea6f5a05779a4fcd5a570dc3e36bb25ca/drupal-7-install-php-redirect.patch"; \
    jq --indent 4 '.extra.patches."drupal/drupal"."Redirect to install.php"="'${patch_url}'"' composer.json > tmp.json; \
    mv tmp.json composer.json; \
    chown wodby:wodby composer.json; \
    \
    echo "$(cat /etc/sudoers.d/wodby), /usr/local/bin/init.sh" > /etc/sudoers.d/wodby; \
    \
    apk del --purge jq; \
    su-exec wodby composer update -d /usr/src/drupal; \
    su-exec wodby composer clear-cache

USER wodby

COPY init /docker-entrypoint-init.d/
COPY actions /usr/local/bin/