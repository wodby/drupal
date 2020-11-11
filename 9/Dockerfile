ARG BASE_IMAGE_TAG

FROM wodby/drupal-php:${BASE_IMAGE_TAG}

ARG DRUPAL_VER

ENV DRUPAL_VER="${DRUPAL_VER}" \
    DOCROOT_SUBDIR="web" \
    APP_NAME="Drupal 9"

USER root

RUN set -ex; \
    \
    mv /usr/local/bin/actions.mk /usr/local/bin/drupal-php.mk; \
    mkdir /usr/src/drupal; \
    chown wodby:wodby -R /usr/src; \
    \
    COMPOSER_MEMORY_LIMIT=-1 su-exec wodby composer create-project "drupal/recommended-project:${DRUPAL_VER}" /usr/src/drupal --no-interaction; \
    \
    cd /usr/src/drupal; \
    cp web/sites/default/default.settings.php web/sites/default/settings.php; \
    mkdir -p web/sites/default/files; \
    chmod 777 web/sites/default/files; \
    chown wodby:wodby web/sites/default/settings.php web/sites/default/files; \
    su-exec wodby composer require drush/drush; \
    # @todo install console, currently in conflict with D9 https://github.com/hechoendrupal/drupal-console/issues/4220
    #su-exec wodby composer require --dev drupal/console:@stable; \
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