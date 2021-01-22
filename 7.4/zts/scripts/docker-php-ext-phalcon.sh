#!/bin/sh

set -e

readonly VERSION="tags/v4.1.0"
readonly REPOSITORY="phalcon/cphalcon"
readonly SOURCE="https://api.github.com/repos/${REPOSITORY}/releases/${VERSION}"
readonly SOURCE_DIR="docker-php-ext-cphalcon"

mkdir $SOURCE_DIR
cd $SOURCE_DIR

curl $SOURCE \
  | grep "tarball_url" \
  | cut -d '"' -f 4 \
  | xargs curl -L \
  | tar -zx --strip 1

cd build
./install

cd ../..
rm -rf $SOURCE_DIR

docker-php-ext-enable phalcon
