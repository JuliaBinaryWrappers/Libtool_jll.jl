# Autogenerated wrapper script for Libtool_jll for x86_64-unknown-freebsd
export libltdl, libtool, libtoolize

JLLWrappers.@generate_wrapper_header("Libtool")
JLLWrappers.@declare_library_product(libltdl, "libltdl.so.7")
JLLWrappers.@declare_file_product(libtool)
JLLWrappers.@declare_file_product(libtoolize)
function __init__()
    JLLWrappers.@generate_init_header()
    JLLWrappers.@init_library_product(
        libltdl,
        "lib/libltdl.so",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@init_file_product(
        libtool,
        "bin/libtool",
    )

    JLLWrappers.@init_file_product(
        libtoolize,
        "bin/libtoolize",
    )

    JLLWrappers.@generate_init_footer()
end  # __init__()