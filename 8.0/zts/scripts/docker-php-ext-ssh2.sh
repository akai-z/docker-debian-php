#!/bin/sh

set -e

readonly VERSION="1.2"

apt-get install libssh2-1-dev -y --no-install-recommends

pecl install ssh2-${VERSION}
docker-php-ext-enable ssh2
