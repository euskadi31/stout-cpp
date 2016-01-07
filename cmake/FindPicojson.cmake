
# - Try to find picojson
#
# The following variables are optionally searched for defaults
#  PICOJSON_ROOT_DIR:            Base directory where all picojson components are found
#
# The following are set after configuration is done:
#  PICOJSON_FOUND
#  PICOJSON_INCLUDE_DIRS

include(FindPackageHandleStandardArgs)

set(GLOG_ROOT_DIR "" CACHE PATH "Folder contains picojson")

if(WIN32)
    find_path(PICOJSON_INCLUDE_DIR picojson.h PATHS ${GLOG_ROOT_DIR}/src/windows)
else()
    find_path(PICOJSON_INCLUDE_DIR picojson.h PATHS ${GLOG_ROOT_DIR})
endif()

find_package_handle_standard_args(PICOJSON DEFAULT_MSG PICOJSON_INCLUDE_DIR)

if(PICOJSON_FOUND)
    set(PICOJSON_INCLUDE_DIRS ${PICOJSON_INCLUDE_DIR})
endif()
