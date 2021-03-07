#!/bin/bash
# Get an updated config.sub and config.guess
cp $BUILD_PREFIX/share/gnuconfig/config.* ./build-aux
set -ex
./configure --prefix=${PREFIX}
make -j${CPU_COUNT}
# Fails on Windows:
#make check || (cat test-suite.log && exit 1)
make install
