#!/bin/sh

set -e

apt-get install -y --no-install-recommends \
  libmagickwand-dev \
  libmagickwand-6.q16-3

pecl install imagick
docker-php-ext-enable imagick
