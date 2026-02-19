if type -q nvim
    set -gx VISUAL nvim
    set -gx EDITOR nvim
    set -gx SYSTEMD_EDITOR nvim
end

if status is-interactive
    if not string match -q linux $TERM
        set -gx NVIM_APPNAME nvim-full
    end
end
