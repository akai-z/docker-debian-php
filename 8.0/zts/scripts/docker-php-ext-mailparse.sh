#!/bin/sh

set -e

pecl install mailparse
docker-php-ext-enable mailparse
