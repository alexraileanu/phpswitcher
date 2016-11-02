#!/bin/bash

NEW_PHP_VERSION=$1
INSTALLED_PHP_VERSION=$(ls -la /etc/apache2/mods-enabled | grep php | awk '{print $9}' | cut -c-6 | awk 'END{print}')
AVAILABLE_PHP_VERSIONS=$(dpkg -l | grep libapache2-mod-php | awk '{print $2}' | cut -d'-' -f3 | cut -d'p' -f3)

if [[ ! $AVAILABLE_PHP_VERSIONS =~ $NEW_PHP_VERSION  ]]; then
    echo 'PHP Version not available'
    exit -1
fi

a2dismod $INSTALLED_PHP_VERSION
a2enmod php$NEW_PHP_VERSION

/etc/init.d/apache2 reload

update-alternatives --set php /usr/bin/php$NEW_PHP_VERSION
update-alternatives --set phpize /usr/bin/phpize$NEW_PHP_VERSION
update-alternatives --set php-config /usr/bin/php-config$NEW_PHP_VERSION
