#!/bin/sh

set -e

pecl install apcu
docker-php-ext-enable apcu
