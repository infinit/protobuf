set(protoc_files
  ${protobuf_source_dir}/src/google/protobuf/compiler/main.cc
)

add_executable(protoc ${protoc_files})
target_link_libraries(protoc libprotobuf libprotoc)
if(WIN32 AND NOT MSVC)
  target_link_libraries(protoc -static)
endif()
