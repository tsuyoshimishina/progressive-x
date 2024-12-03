find_path(GLOG_INCLUDE_DIR glog/logging.h)
find_library(GLOG_LIBRARY NAMES glog)

include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(glog DEFAULT_MSG GLOG_INCLUDE_DIR GLOG_LIBRARY)

if(GLOG_FOUND)
    set(GLOG_LIBRARIES ${GLOG_LIBRARY})
    set(GLOG_INCLUDE_DIRS ${GLOG_INCLUDE_DIR})
    add_library(glog::glog UNKNOWN IMPORTED)
    set_target_properties(glog::glog PROPERTIES
        IMPORTED_LOCATION ${GLOG_LIBRARY}
        INTERFACE_INCLUDE_DIRECTORIES ${GLOG_INCLUDE_DIR}
    )
endif()
