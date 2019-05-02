#!/bin/sh

set -e

pecl install raphf
docker-php-ext-enable raphf
