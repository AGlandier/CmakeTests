#----------------------------------------------------------------
# Generated CMake target import file for configuration "RelWithDebInfo".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "loglib" for configuration "RelWithDebInfo"
set_property(TARGET loglib APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(loglib PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELWITHDEBINFO "CXX"
  IMPORTED_LOCATION_RELWITHDEBINFO "O:/1A/FirstOrganizedCMake/build/install/lib/loglib.lib"
  )

list(APPEND _IMPORT_CHECK_TARGETS loglib )
list(APPEND _IMPORT_CHECK_FILES_FOR_loglib "O:/1A/FirstOrganizedCMake/build/install/lib/loglib.lib" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
