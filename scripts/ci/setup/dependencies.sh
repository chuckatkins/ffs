#!/bin/bash

cd ${GITHUB_WORKSPACE}/..
mkdir atl
cd atl
git clone https://github.com/GTKorvo/atl.git source
mkdir build
cd build
cmake \
  -DCMAKE_BUILD_TYPE=${CTEST_BUILD_CONFIGURATION} \
  -DBUILD_TESTING=OFF \
  -DCMAKE_INSTALL_PREFIX=${GITHUB_WORKSPACE}/../dependencies \
  ../source
cmake --build . -j4 --config ${CTEST_BUILD_CONFIGURATION}
cmake --install . --config ${CTEST_BUILD_CONFIGURATION}

if [ "${RUNNER_OS}" != "Windows" ]
then
  cd ${GITHUB_WORKSPACE}/..
  mkdir dill
  cd dill
  git clone https://github.com/GTKorvo/dill.git source
  mkdir build
  cd build
  cmake \
    -DCMAKE_BUILD_TYPE=${CTEST_BUILD_CONFIGURATION} \
    -DBUILD_TESTING=OFF \
    -DCMAKE_INSTALL_PREFIX=${GITHUB_WORKSPACE}/../dependencies \
    ../source
  cmake --build . -j4 --config ${CTEST_BUILD_CONFIGURATION}
  cmake --install . --config ${CTEST_BUILD_CONFIGURATION}
fi
