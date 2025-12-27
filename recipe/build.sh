#!/bin/bash

set -ex

cmake ${CMAKE_ARGS} -DCMAKE_BUILD_TYPE=Release -G Ninja -S . -B build
cmake --build build
ctest --test-dir build --output-on-failure
cmake --build build --target install
