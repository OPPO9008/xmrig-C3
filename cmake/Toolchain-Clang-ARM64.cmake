set(CMAKE_SYSTEM_PROCESSOR aarch64)
set(CMAKE_SYSTEM_NAME Linux)
set(TARGET_TRIPLE aarch64-linux-gnu)
message( 目标 ${CMAKE_SYSTEM_PROCESSOR} ,目标系统${CMAKE_SYSTEM_NAME} )
# Currently only use clang as it makes cross-compilation easier
set(CMAKE_ASM_COMPILER_TARGET ${TARGET_TRIPLE})
set(CMAKE_C_COMPILER aarch64-linux-gnu-clang)
set(CMAKE_C_COMPILER_TARGET ${TARGET_TRIPLE})
set(CMAKE_CXX_COMPILER aarch64-linux-gnu-clang++)
set(CMAKE_CXX_COMPILER_TARGET ${TARGET_TRIPLE})
set(CMAKE_LINKER lld)
set(CMAKE_C_FLAGS -fuse-ld=lld)