echo ON

cmake %CMAKE_ARGS% -G Ninja -S . -B build
if errorlevel 1 exit 1

cmake --build build
if errorlevel 1 exit 1

ctest --test-dir build --output-on-failure
if errorlevel 1 exit 1

cmake --build build --target install
if errorlevel 1 exit 1
