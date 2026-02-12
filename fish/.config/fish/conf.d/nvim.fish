if status is-interactive
    if not string match -q linux $TERM
        set -gx NVIM_APPNAME nvim-full
    end
end
