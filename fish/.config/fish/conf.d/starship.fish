if status is-interactive
    if not string match -q linux $TERM
        if type -q starship
            command starship init fish | source
        end
    end
end
