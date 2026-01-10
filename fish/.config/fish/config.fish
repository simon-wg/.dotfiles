if status is-interactive
    # Commands to run in interactive sessions can go here
    set fish_greeting
    # Behavior for non-TTY sessions
    if not string match -q linux $TERM
        starship init fish | source
        zoxide init fish | source
        fish_config theme choose "Catppuccin Macchiato"
        alias fedora="distrobox enter fedora"
        alias ssh="TERM=xterm-256color ssh"
        abbr --add ls eza
        abbr --add l "eza --icons -l"
        abbr --add ll "eza --icons -l"
        abbr --add la "eza --icons -la"
        abbr --add lh "eza --icons -lh"
        abbr --add tree "eza -T"
        if type -q fnm
            fnm env --use-on-cd | source
        end
    end
    if type -q nvim
        set -gx VISUAL nvim
        set -gx EDITOR nvim
    else if test -q vim
        set -gx VISUAL vim
        set -gx EDITOR vim
    end
    eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv fish)"
    if test -d (brew --prefix)"/share/fish/completions"
        set -p fish_complete_path (brew --prefix)/share/fish/completions
    end
    if test -d (brew --prefix)"/share/fish/vendor_completions.d"
    set -p fish_complete_path (brew --prefix)/share/fish/vendor_completions.d
end
    # Dirty fix to make sure homebrew binaries don't override native ones
    fish_add_path --move --prepend /usr/local/bin /usr/bin
    fish_add_path -p $HOME/.local/bin
    fish_add_path -p $HOME/.npm-global/bin

    # Specifics for containers
    if test "$CONTAINER_ID" = dev; or test "$CONTAINER_ID" = fedora
        set -gx NVIM_APPNAME nvim-full
    end
end
