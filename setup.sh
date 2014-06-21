#!/bin/bash

pkgin -y up
pkgin -y in build-essential
pkgin -y in ruby

pushd ..
git clone https://github.com/ruby/ruby.git
pushd ruby

export CONFIGURE_OPTS="--with-opt-dir=/opt/local --enable-shared"
export LDFLAGS="-R/opt/local -L/opt/local/lib"
export CXXFLAGS="-m64 -O3 -g -Wall"
export CFLAGS="-O3 -I/opt/local/include"

autoconf
./configure
make
make install

popd
popd

