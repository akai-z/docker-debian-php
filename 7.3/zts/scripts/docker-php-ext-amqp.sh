#!/bin/sh

set -e

readonly VERSION="latest"
readonly REPOSITORY="alanxz/rabbitmq-c"
readonly SOURCE="https://api.github.com/repos/${REPOSITORY}/releases/${VERSION}"
readonly SOURCE_DIR="docker-php-ext-rabbitmqc"

apt-get install -y --no-install-recommends \
  cmake \
  libssl-dev

mkdir $SOURCE_DIR
cd $SOURCE_DIR

curl $SOURCE \
  | grep "tarball_url" \
  | cut -d '"' -f 4 \
  | xargs curl -L \
  | tar -zx --strip 1

mkdir build
cd build
cmake -DCMAKE_INSTALL_PREFIX=/usr -DCMAKE_INSTALL_LIBDIR=lib ..
cmake --build . --target install

cd ../..
rm -rf $SOURCE_DIR

pecl install amqp
docker-php-ext-enable amqp
