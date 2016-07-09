find_package (Libmetal REQUIRED)
collect (PROJECT_INC_DIRS "${LIBMETAL_INCLUDE_DIR}")
collect (PROJECT_LIB_DIRS "${LIBMETAL_LIB_DIR}")

if ("${CMAKE_SYSTEM_NAME}" STREQUAL "Linux")
  check_include_files (stdatomic.h HAVE_STDATOMIC_H)
else ("${CMAKE_SYSTEM_NAME}" STREQUAL "Linux")
  set (_saved_cmake_required_flags ${CMAKE_REQUIRED_FLAGS})
  set (CMAKE_REQUIRED_FLAGS "-c")
  check_include_files (stdatomic.h HAVE_STDATOMIC_H)
  set (CMAKE_REQUIRED_FLAGS ${_saved_cmake_required_flags})
endif ("${CMAKE_SYSTEM_NAME}" STREQUAL "Linux")
# vim: expandtab:ts=2:sw=2:smartindent
