#!/bin/sh

set -e

apt-get install -y --no-install-recommends \
  libmemcached-dev

pecl install memcached
docker-php-ext-enable memcached
