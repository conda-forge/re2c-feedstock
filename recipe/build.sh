#!/bin/bash

set -ex

cmake ${CMAKE_ARGS} -DCMAKE_BUILD_TYPE=Release -G Ninja -S . -B build
cmake --build build
if [[ "$HOST" != arm64-apple* ]]; then
    cmake --build build --target check_re2c
fi
cmake --build build --target install
