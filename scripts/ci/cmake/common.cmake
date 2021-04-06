# Client maintainer: chuck.atkins@kitware.com

string(APPEND dashboard_cache "
BUILD_TESTING:BOOL=ON
")

list(APPEND CTEST_UPDATE_NOTES_FILES "${CMAKE_CURRENT_LIST_FILE}")
include(${CMAKE_CURRENT_LIST_DIR}/../../dashboard/ffs_common.cmake)
