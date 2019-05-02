#!/bin/sh

set -e

pecl install psr
docker-php-ext-enable psr
