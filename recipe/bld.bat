echo ON

cmake %CMAKE_ARGS% -G Ninja -S . -B build
if errorlevel 1 exit 1

cmake --build build
if errorlevel 1 exit 1

cmake --build build --target check_re2c
if errorlevel 1 exit 1

cmake --build build --target install
if errorlevel 1 exit 1
