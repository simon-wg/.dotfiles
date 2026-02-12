if status is-interactive
    if not string match -q linux $TERM
        if type -q zoxide
            command zoxide init fish | source
        end
    end
end
