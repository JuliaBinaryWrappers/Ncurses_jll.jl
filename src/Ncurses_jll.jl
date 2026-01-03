# Use baremodule to shave off a few KB from the serialized `.ji` file
baremodule Ncurses_jll
using Base
using Base: UUID
import JLLWrappers

JLLWrappers.@generate_main_file_header("Ncurses")
JLLWrappers.@generate_main_file("Ncurses", Base.UUID("68e3532b-a499-55ff-9963-d1c0c0748b3a"))
end  # module Ncurses_jll
