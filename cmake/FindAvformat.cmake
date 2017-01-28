# - Try to find LibAvformat
# Once done this will define
#  LIBAVFORMAT_FOUND - System has LibAvformat
#  LIBAVFORMAT_INCLUDE_DIRS - The LibAvformat include directories
#  LIBAVFORMAT_LIBRARIES - The libraries needed to use LibAvformat
#  LIBAVFORMAT_DEFINITIONS - Compiler switches required for using LibAvformat

#find_package(PkgConfig)
#pkg_check_modules(PC_LIBAVFORMAT QUIET libAvFormat)
#set(LIBAVFORMAT_DEFINITIONS ${PC_LIBAVFORMAT_CFLAGS_OTHER})

#find_path(LIBAVFORMAT_INCLUDE_DIR ffmpeg/libAvformat/avformat.h
#          HINTS ${PC_LIBAVFORMAT_INCLUDEDIR} ${PC_LIBAVFORMAT_INCLUDE_DIRS}
#          PATH_SUFFIXES ffmpeg )

#find_library(LIBAVFORMAT_LIBRARY NAMES libavformat libAvFormat LibAvformat
#             HINTS ${PC_LIBAVFORMAT_LIBDIR} ${PC_LIBAVFORMAT_LIBRARY_DIRS} )

#set(LIBAVFORMAT_LIBRARIES ${LIBAVFORMAT_LIBRARY} )
#set(LIBAVFORMAT_INCLUDE_DIRS ${LIBAVFORMAT_INCLUDE_DIR} )

#include(FindPackageHandleStandardArgs)
# handle the QUIETLY and REQUIRED arguments and set LIBAVFORMAT_FOUND to TRUE
# if all listed variables are TRUE
#find_package_handle_standard_args(LibAvformat  DEFAULT_MSG
#                                  LIBAVFORMAT_LIBRARY LIBAVFORMAT_INCLUDE_DIR)

#mark_as_advanced(LIBAVFORMAT_INCLUDE_DIR LIBAVFORMAT_LIBRARY )


INCLUDE(FindPkgConfig)
PKG_SEARCH_MODULE(LIBAVFORMAT REQUIRED libavformat)
INCLUDE_DIRECTORIES(${LIBAVFORMAT_INCLUDE_DIRS})
