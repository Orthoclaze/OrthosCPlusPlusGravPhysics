# Make sure the compiler can find include files from our Hello library.
include_directories (${HELLO_SOURCE_DIR}/CPPfiles)

# Make sure the linker can find the Hello library once it is built.
link_directories (${HELLO_BINARY_DIR}/CPPfilesBin)

# Add executable called "helloDemo" that is built from the source files
# "demo.cxx" and "demo_b.cxx". The extensions are automatically found.
add_executable (main main.cpp)

# Link the executable to the Hello library.
# target_link_libraries (main jsoncpp)
target_link_libraries (main CPPfiles)
