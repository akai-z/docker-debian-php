#!/bin/sh

set -e

readonly VERSION="4.5.9"

pecl install swoole-${VERSION}
docker-php-ext-enable swoole
