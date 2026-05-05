cmake ${CMAKE_ARGS} \
      -G Ninja \
      -DCMAKE_BUILD_TYPE=Debug \
      -DCMAKE_VERBOSE_MAKEFILE=true \
      -DCMAKE_INSTALL_PREFIX=$PREFIX \
      -S . \
      -B build

cmake --build build
cmake --install build
