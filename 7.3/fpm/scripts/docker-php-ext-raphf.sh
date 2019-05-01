#!/bin/sh

set -eo pipefail

pecl install raphf
docker-php-ext-enable raphf
