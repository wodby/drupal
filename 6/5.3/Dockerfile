FROM wodby/drupal-php:5.3-2.0.0

COPY make.yml /var/www/html

RUN chown -R www-data:www-data /var/www/html/ && \
    su-exec www-data drush make make.yml -y
