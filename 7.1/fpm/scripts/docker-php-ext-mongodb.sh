#!/bin/sh

set -e

pecl install mongodb
docker-php-ext-enable mongodb
