# -----------------------------------------------------------------------------
# Global Configuration (Runs for interactive and non-interactive sessions)
# -----------------------------------------------------------------------------

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv fish)"
fish_add_path -p $HOME/.local/bin
set -gx BUN_INSTALL "$HOME/.bun"
fish_add_path -p $BUN_INSTALL/bin

# Editor setup
if type -q nvim
    set -gx VISUAL nvim
    set -gx EDITOR nvim
else if type -q vim
    set -gx VISUAL vim
    set -gx EDITOR vim
end

# Completions setup
if test -d (brew --prefix)"/share/fish/completions"
    set -p fish_complete_path (brew --prefix)/share/fish/completions
end
if test -d (brew --prefix)"/share/fish/vendor_completions.d"
    set -p fish_complete_path (brew --prefix)/share/fish/vendor_completions.d
end

# Specifics for containers
if test "$CONTAINER_ID"; or test "$hostname" != apollo
    set -gx NVIM_APPNAME nvim-full
end

# -----------------------------------------------------------------------------
# Interactive Configuration
# -----------------------------------------------------------------------------
if status is-interactive
    set fish_greeting

    fish_default_key_bindings

    if type -q fnm
        fnm env --use-on-cd --shell fish | source
    end

    if not string match -q linux $TERM
        starship init fish | source
        zoxide init fish | source
        fish_config theme choose "Catppuccin Macchiato"

        alias fedora="distrobox enter fedora"
        alias ssh="TERM=xterm-256color command ssh"
        alias snvim='sudo env PATH="$PATH" nvim'

        # Eza aliases
        alias ls="eza --icons -F"
        alias l="eza --icons -lF"
        alias ll="eza --icons -lF"
        alias la="eza --icons -laF"
        alias lh="eza --icons -lhF"
        alias tree="eza --icons -TF"

        function auto_ls --on-variable PWD
            if status is-interactive
                ls
            end
        end
    end
end
