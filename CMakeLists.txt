# Specify the minimum version for CMake

cmake_minimum_required(VERSION 2.8.9)
project(libfcdpp1)
set(CMAKE_BUILD_TYPE Release)


#
# Set project version information. This should probably be done via external
# file at some point.
#
set(LIBFCDPP1_VERSION_MAJOR 0)
set(LIBFCDPP1_VERSION_MINOR 0)
# Set to patch level if needed, otherwise leave FALSE.
set(LIBFCDPP1_VERSION_PATCH 2)
set(LIBFCDPP1_VERSION "${LIBFCDPP1_VERSION_MAJOR}.${LIBFCDPP1_VERSION_MINOR}")
# Patch level version bumps should not change API/ABI.
set(SOVERSION "${LIBFCDPP1_VERSION_MAJOR}.${LIBFCDPP1_VERSION_MINOR}")
if(LIBFCDPP1_VERSION_PATCH)
    set(LIBFCDPP1_VERSION "${LIBFCDPP1_VERSION}.${LIBFCDPP1_VERSION_PATCH}")
endif()
message(STATUS "libfcdpp1 version: ${LIBFCDPP1_VERSION}")


set(SOURCES
   fcdpp.c
   fcdpp.h
   fcdpphidcmd.h
   )

add_library(fcdpp1 SHARED ${SOURCES})
set_target_properties(fcdpp1 PROPERTIES 
	              VERSION ${LIBFCDPP1_VERSION}
		      SOVERSION ${SOVERSION})

# Set DESTDIR for the pkg-config  generation 
set(DEST_DIR "${CMAKE_INSTALL_PREFIX}")
CONFIGURE_FILE("${CMAKE_CURRENT_SOURCE_DIR}/libfcdpp1.pc.in" "libfcdpp1.pc" @ONLY)



install(TARGETS fcdpp1 
	RUNTIME DESTINATION bin
	LIBRARY DESTINATION lib/${CMAKE_LIBRARY_ARCHITECTURE}
	ARCHIVE DESTINATION lib/static)
install(FILES ${CMAKE_CURRENT_BINARY_DIR}/libfcdpp1.pc DESTINATION lib/${CMAKE_LIBRARY_ARCHITECTURE}/pkgconfig)
install(FILES ${CMAKE_CURRENT_BINARY_DIR}/libfcdpp1.pc DESTINATION share/pkgconfig)

install(FILES ${CMAKE_CURRENT_SOURCE_DIR}/fcdpp.h DESTINATION include RENAME libfcdpp1.h)
