# Autogenerated wrapper script for Ncurses_jll for x86_64-apple-darwin
export libform, libmenu, libncurses, libpanel

JLLWrappers.@generate_wrapper_header("Ncurses")
JLLWrappers.@declare_library_product(libform, "@rpath/libformw.6.dylib")
JLLWrappers.@declare_library_product(libmenu, "@rpath/libmenuw.6.dylib")
JLLWrappers.@declare_library_product(libncurses, "@rpath/libncursesw.6.dylib")
JLLWrappers.@declare_library_product(libpanel, "@rpath/libpanelw.6.dylib")
function __init__()
    JLLWrappers.@generate_init_header()
    JLLWrappers.@init_library_product(
        libform,
        "lib/libform.dylib",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@init_library_product(
        libmenu,
        "lib/libmenu.dylib",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@init_library_product(
        libncurses,
        "lib/libncurses.dylib",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@init_library_product(
        libpanel,
        "lib/libpanel.dylib",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@generate_init_footer()
    if Sys.isunix()
    path = joinpath(artifact_dir, "share", "terminfo")
    old = get(ENV, "TERMINFO_DIRS", nothing)
    if old === nothing
        ENV["TERMINFO_DIRS"] = path
    else
        ENV["TERMINFO_DIRS"] = old * ":" * path
    end
end

end  # __init__()
