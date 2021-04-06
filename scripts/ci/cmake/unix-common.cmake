# Client maintainer: chuck.atkins@kitware.com

if(NOT CTEST_CMAKE_GENERATOR)
  set(CTEST_CMAKE_GENERATOR "Unix Makefiles")
endif()
if(NOT CTEST_BUILD_FLAGS)
  set(CTEST_BUILD_FLAGS "-k -j2")
endif()

include(${CMAKE_CURRENT_LIST_DIR}/common.cmake)
