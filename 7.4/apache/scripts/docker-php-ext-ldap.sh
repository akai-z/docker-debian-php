#!/bin/sh

set -eo pipefail

apt-get install -y --no-install-recommends \
  libldap2-dev \
  libldap-2.4-2

NPROC=$(getconf _NPROCESSORS_ONLN)
docker-php-ext-install -j${NPROC} ldap
