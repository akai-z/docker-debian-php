#!/bin/sh

set -e

pecl install redis
docker-php-ext-enable redis
