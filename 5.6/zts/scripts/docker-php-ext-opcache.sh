#!/bin/sh

set -e

NPROC=$(getconf _NPROCESSORS_ONLN)
docker-php-ext-install -j${NPROC} opcache
