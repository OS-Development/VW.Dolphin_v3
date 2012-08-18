# -*- cmake -*-
include(Prebuilt)

if (STANDALONE)
  include(FindPkgConfig)

  pkg_check_modules(FREETYPE REQUIRED freetype2)
else (STANDALONE)
  use_prebuilt_binary(freetype)
  if (LINUX)
    set(FREETYPE_INCLUDE_DIRS
        ${LIBS_PREBUILT_DIR}/include)
  else (LINUX)
    set(FREETYPE_INCLUDE_DIRS ${LIBS_PREBUILT_DIR}/include)
  endif (LINUX)

  if( NOT LINUX )
    set(FREETYPE_LIBRARIES freetype)
  else( NOT LINUX )
   # Nicky D.
   # Force linking against prebuild freetype. Use find_library(...) instead of a simple set( ... ) so the configure step already fails. Otherwise everything
   # might look golden until linking.
   find_library( FREETYPE_LIBRARIES  freetype PATHS ${LIBS_PREBUILT_DIR}/lib/release/
                 NO_DEFAULT_PATH NO_CMAKE_PATH NO_CMAKE_SYSTEM_PATH NO_CMAKE_ENVIRONMENT_PATH
               )
  endif( NOT LINUX )
endif (STANDALONE)

link_directories(${FREETYPE_LIBRARY_DIRS})
