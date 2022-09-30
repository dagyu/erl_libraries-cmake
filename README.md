# erl_libraries-cmake

You can just clone or grab the `erl_libraries.cmake` file and put in your project.
Or it can be used in this way:

```cmake
# CMAKE CONFIGURATIONS

if(NOT EXISTS "${CMAKE_BINARY_DIR}/erl_libraries.cmake")
  message(STATUS "Downloading erl_libraries.cmake from https://github.com/dagyu/erl_libraries-cmake")
  file(DOWNLOAD "https://raw.githubusercontent.com/dagyu/erl_libraries-cmake/main/erl_libraries.cmake"
                "${CMAKE_BINARY_DIR}/erl_libraries.cmake"
                TLS_VERIFY ON)
endif()

include(${CMAKE_BINARY_DIR}/erl_libraries.cmake)

# THEN YOU CAN SET ERL LIBRARIES IN THIS WAY 
set_erlang_lib(ERL_INTERFACE_DIR "erl_interface-5.1")
```

Note the `main` ref in the URL, change it to point to your desired release, branch or commit.
