# Copyright (c) 2019 vesoft inc. All rights reserved.
#
# This source code is licensed under Apache 2.0 License.

ExternalProject_Add(
    pkgconf
    URL https://github.com/pkgconf/pkgconf/archive/refs/tags/pkgconf-1.8.0.tar.gz
    URL_HASH MD5=56ceb011a12ae5f28cda0b92d8890619
    PREFIX ${CMAKE_CURRENT_BINARY_DIR}/pkgconf
    TMP_DIR ${BUILD_INFO_DIR}
    STAMP_DIR ${BUILD_INFO_DIR}
    DOWNLOAD_DIR ${DOWNLOAD_DIR}
    SOURCE_DIR ${CMAKE_CURRENT_BINARY_DIR}/pkgconf/source
    CMAKE_ARGS ${common_cmake_args}
    BUILD_IN_SOURCE 1
    BUILD_COMMAND make -s -j${BUILDING_JOBS_NUM}
    INSTALL_COMMAND make -s -j${BUILDING_JOBS_NUM} install
    LOG_CONFIGURE TRUE
    LOG_BUILD TRUE
    LOG_INSTALL TRUE
)

