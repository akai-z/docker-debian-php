#!/bin/sh

set -eo pipefail

pecl install psr
docker-php-ext-enable psr
