# Autogenerated wrapper script for Ncurses_jll for x86_64-linux-musl
export libform, libmenu, libncurses, libpanel

JLLWrappers.@generate_wrapper_header("Ncurses")
JLLWrappers.@declare_library_product(libform, "libformw.so.6")
JLLWrappers.@declare_library_product(libmenu, "libmenuw.so.6")
JLLWrappers.@declare_library_product(libncurses, "libncursesw.so.6")
JLLWrappers.@declare_library_product(libpanel, "libpanelw.so.6")
function __init__()
    JLLWrappers.@generate_init_header()
    JLLWrappers.@init_library_product(
        libform,
        "lib/libform.so",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@init_library_product(
        libmenu,
        "lib/libmenu.so",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@init_library_product(
        libncurses,
        "lib/libncurses.so",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@init_library_product(
        libpanel,
        "lib/libpanel.so",
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
