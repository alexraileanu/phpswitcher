#!/bin/bash

NEW_PHP_VERSION=$1
INSTALLED_PHP_VERSION=$(ls -la /etc/apache2/mods-enabled | grep php | awk '{print $9}' | cut -c-6 | awk 'END{print}')

a2dismod $INSTALLED_PHP_VERSION
a2enmod php$NEW_PHP_VERSION

/etc/init.d/apache2 reload

update-alternatives --set php /usr/bin/php$NEW_PHP_VERSION
update-alternatives --set phpize /usr/bin/phpize$NEW_PHP_VERSION
update-alternatives --set php-config /usr/bin/php-config$NEW_PHP_VERSION
