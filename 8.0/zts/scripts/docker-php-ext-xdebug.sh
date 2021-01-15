#!/bin/sh

set -e

readonly VERSION="3.0.1"


touch /var/log/xdebug.log

pecl install xdebug-${VERSION}
docker-php-ext-enable xdebug
