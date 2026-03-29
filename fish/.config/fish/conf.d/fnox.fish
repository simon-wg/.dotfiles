if type -q fnox
    set -gx FNOX_SHELL_OUTPUT none
    fnox activate fish | source
end
