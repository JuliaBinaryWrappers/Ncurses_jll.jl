# Autogenerated wrapper script for Ncurses_jll for x86_64-linux-gnu
export libpanel, libncurses, libform, libmenu

using Gettext_jll
## Global variables
PATH = ""
LIBPATH = ""
LIBPATH_env = "LD_LIBRARY_PATH"

# Relative path to `libpanel`
const libpanel_splitpath = ["lib", "libpanel.so"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libpanel_path = ""

# libpanel-specific global declaration
# This will be filled out by __init__()
libpanel_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libpanel = "libpanelw.so.6"


# Relative path to `libncurses`
const libncurses_splitpath = ["lib", "libncurses.so"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libncurses_path = ""

# libncurses-specific global declaration
# This will be filled out by __init__()
libncurses_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libncurses = "libncursesw.so.6"


# Relative path to `libform`
const libform_splitpath = ["lib", "libform.so"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libform_path = ""

# libform-specific global declaration
# This will be filled out by __init__()
libform_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libform = "libformw.so.6"


# Relative path to `libmenu`
const libmenu_splitpath = ["lib", "libmenu.so"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libmenu_path = ""

# libmenu-specific global declaration
# This will be filled out by __init__()
libmenu_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libmenu = "libmenuw.so.6"


"""
Open all libraries
"""
function __init__()
    global prefix = abspath(joinpath(@__DIR__, ".."))

    # Initialize PATH and LIBPATH environment variable listings
    global PATH_list, LIBPATH_list
    append!.(Ref(PATH_list), (Gettext_jll.PATH_list,))
    append!.(Ref(LIBPATH_list), (Gettext_jll.LIBPATH_list,))

    global libpanel_path = abspath(joinpath(artifact"Ncurses", libpanel_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libpanel_handle = dlopen(libpanel_path)
    push!(LIBPATH_list, dirname(libpanel_path))

    global libncurses_path = abspath(joinpath(artifact"Ncurses", libncurses_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libncurses_handle = dlopen(libncurses_path)
    push!(LIBPATH_list, dirname(libncurses_path))

    global libform_path = abspath(joinpath(artifact"Ncurses", libform_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libform_handle = dlopen(libform_path)
    push!(LIBPATH_list, dirname(libform_path))

    global libmenu_path = abspath(joinpath(artifact"Ncurses", libmenu_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libmenu_handle = dlopen(libmenu_path)
    push!(LIBPATH_list, dirname(libmenu_path))

    # Filter out duplicate and empty entries in our PATH and LIBPATH entries
    filter!(!isempty, unique!(PATH_list))
    filter!(!isempty, unique!(LIBPATH_list))
    global PATH = join(PATH_list, ':')
    global LIBPATH = join(LIBPATH_list, ':')

    # Add each element of LIBPATH to our DL_LOAD_PATH (necessary on platforms
    # that don't honor our "already opened" trick)
    #for lp in LIBPATH_list
    #    push!(DL_LOAD_PATH, lp)
    #end
end  # __init__()

