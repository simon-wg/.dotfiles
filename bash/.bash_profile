if command -v nvim > /dev/null 2>&1; then
    export VISUAL=nvim
    export EDITOR=nvim
    export SYSTEMD_EDITOR=nvim
fi

if [[ $TERM != "linux" ]]; then
    export NVIM_APPNAME=nvim-full
fi

[[ -f ~/.bashrc ]] && source ~/.bashrc
