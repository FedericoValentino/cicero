cmake_minimum_required(VERSION 3.12)
project(re2_c++_test)

# Export compile_commands.json
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

# Set C++ standard
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# XRT path (default install location)
set(XRT_ROOT /opt/xilinx/xrt)

# Include XRT headers (including experimental)
include_directories(${XRT_ROOT}/include)
include_directories(${XRT_ROOT}/include/experimental)

# Link XRT libraries
link_directories(${XRT_ROOT}/lib)

# Add the executable
add_executable(re2_driver_xrt
    main.cpp
)

# Link XRT and pthread
target_link_libraries(re2_driver_xrt
    xrt_core
    xrt_coreutil
    pthread
)
