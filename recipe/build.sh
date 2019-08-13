#!/bin/bash
set -ex
./configure --prefix=${PREFIX}
make -j${CPU_COUNT}
# Fails on Windows:
#make check || (cat test-suite.log && exit 1)
make install
