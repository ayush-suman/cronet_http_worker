# The Flutter tooling requires that developers have CMake 3.10 or later
# installed. You should not increase this version, as doing so will cause
# the plugin to fail to compile for some customers of the plugin.
cmake_minimum_required(VERSION 3.10)

project(cronet_http_worker_library VERSION 0.0.1 LANGUAGES C)

add_library(cronet_http_worker SHARED
  "cronet_http_worker.c"
)

set_target_properties(cronet_http_worker PROPERTIES
  PUBLIC_HEADER cronet_http_worker.h
  OUTPUT_NAME "cronet_http_worker"
)

target_compile_definitions(cronet_http_worker PUBLIC DART_SHARED_LIB)
