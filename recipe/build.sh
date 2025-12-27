#!/bin/bash

set -ex

cmake ${CMAKE_ARGS} -DCMAKE_BUILD_TYPE=Release -G Ninja -S . -B build
cmake --build build
cmake --build build --target install
