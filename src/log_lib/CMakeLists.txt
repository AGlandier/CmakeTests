
set(target_name loglib)
add_library(${target_name} STATIC "") # try SHARED for dynamic library

target_sources(${target_name}
    PRIVATE
		"${PROJECT_SOURCE_DIR}/src/log_lib/print_log.cpp"
    PRIVATE 
		"${PROJECT_SOURCE_DIR}/include/log_lib/print_log.h"
)

#target_include_directories(${target_name} 
#    PUBLIC   
#        "${PROJECT_SOURCE_DIR}/include"
#	    "${PROJECT_BINARY_DIR}"
#)

export(TARGETS ${target_name}
	FILE ${PROJECT_BINARY_DIR}/${target_name}_target.cmake
)

target_include_directories(${target_name} 
	PUBLIC
	$<BUILD_INTERFACE:${PROJECT_SOURCE_DIR}/include>
	$<BUILD_INTERFACE:${PROJECT_BINARY_DIR}>
	$<INSTALL_INTERFACE:include>
)

#install target lib
install(TARGETS ${target_name} EXPORT ${target_name} DESTINATION ${PROJECT_BINARY_DIR}/install/lib)
#install target export
install(EXPORT ${target_name} FILE ${target_name}_target.cmake DESTINATION ${PROJECT_BINARY_DIR}/install/cmake/)

#install includes
install(DIRECTORY ${PROJECT_SOURCE_DIR}/include/ DESTINATION ${PROJECT_BINARY_DIR}/install/include/)
#generated include
install(FILES ${PROJECT_BINARY_DIR}/FirstOrganizedCMakeConfig.h DESTINATION ${PROJECT_BINARY_DIR}/install/include/)

#install project configuration
install(FILES ${PROJECT_BINARY_DIR}/FirstOrganizedCMakeConfig.cmake DESTINATION ${PROJECT_BINARY_DIR}/install/cmake/)

export(TARGETS ${target_name}
	FILE ${PROJECT_BINARY_DIR}/${target_name}_target.cmake
)
