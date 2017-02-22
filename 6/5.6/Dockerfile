FROM wodby/drupal-php:5.6

COPY make.yml /var/www/html

RUN chown -R www-data:www-data /var/www/html/ && \
    su-exec www-data drush make make.yml -y
