# Autogenerated wrapper script for Libtool_jll for armv7l-linux-musleabihf
export libltdl

## Global variables
PATH = ""
LIBPATH = ""
LIBPATH_env = "LD_LIBRARY_PATH"
LIBPATH_default = ""

# Relative path to `libltdl`
const libltdl_splitpath = ["lib", "libltdl.so"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libltdl_path = ""

# libltdl-specific global declaration
# This will be filled out by __init__()
libltdl_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libltdl = "libltdl.so.7"


"""
Open all libraries
"""
function __init__()
    global artifact_dir = abspath(artifact"Libtool")

    # Initialize PATH and LIBPATH environment variable listings
    global PATH_list, LIBPATH_list
    global libltdl_path = normpath(joinpath(artifact_dir, libltdl_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libltdl_handle = dlopen(libltdl_path)
    push!(LIBPATH_list, dirname(libltdl_path))

    # Filter out duplicate and empty entries in our PATH and LIBPATH entries
    filter!(!isempty, unique!(PATH_list))
    filter!(!isempty, unique!(LIBPATH_list))
    global PATH = join(PATH_list, ':')
    global LIBPATH = join(vcat(LIBPATH_list, [joinpath(Sys.BINDIR, Base.LIBDIR, "julia"), joinpath(Sys.BINDIR, Base.LIBDIR)]), ':')

    
end  # __init__()

