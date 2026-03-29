if not string match -q linux $TERM
    if type -q zoxide
        zoxide init fish | source
    end
end
