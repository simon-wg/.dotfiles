if type -q chafa
    if string match -q xterm-ghostty $TERM
        alias chafa="chafa --format=kitty"
    end
end
