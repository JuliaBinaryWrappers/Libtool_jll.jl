# Use baremodule to shave off a few KB from the serialized `.ji` file
baremodule Libtool_jll
using Base
using Base: UUID
import JLLWrappers

JLLWrappers.@generate_main_file_header("Libtool")
JLLWrappers.@generate_main_file("Libtool", UUID("a76c16ae-fb8f-5ff0-8826-da3b7a640f0b"))
end  # module Libtool_jll
