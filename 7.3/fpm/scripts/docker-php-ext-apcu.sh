#!/bin/sh

set -eo pipefail

pecl install apcu
docker-php-ext-enable apcu
