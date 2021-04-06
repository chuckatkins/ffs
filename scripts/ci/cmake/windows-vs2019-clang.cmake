# Client maintainer: chuck.atkins@kitware.com

set(CTEST_CMAKE_GENERATOR "Visual Studio 16")
set(CTEST_CMAKE_GENERATOR_PLATFORM x64)
set(CTEST_CMAKE_GENERATOR_TOOLSET ClangCL)

include(${CMAKE_CURRENT_LIST_DIR}/windows-common.cmake)
