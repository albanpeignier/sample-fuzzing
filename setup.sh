#!/bin/sh

set -x

sudo apt install clang libclang-rt-19-dev

bundle config set path vendor/bundle

MAKE="make --environment-overrides V=1" \
CC="/usr/bin/clang" \
CXX="/usr/bin/clang++" \
LDSHARED="/usr/bin/clang -shared" \
LDSHAREDXX="/usr/bin/clang++ -shared" \
  bundle install
