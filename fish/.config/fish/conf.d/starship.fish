if not string match -q linux $TERM
    if type -q starship
        starship init fish | source
    end
end
