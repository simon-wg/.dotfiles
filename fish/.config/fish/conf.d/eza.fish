if status is-interactive
    if not string match -q linux $TERM
        if type -q eza
            alias ls="eza --icons -F"
            alias l="eza --icons -lF"
            alias ll="eza --icons -lF"
            alias la="eza --icons -laF"
            alias lh="eza --icons -lhF"
            alias tree="eza --icons -TF"
        end
    end
end
