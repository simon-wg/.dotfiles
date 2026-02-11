# -----------------------------------------------------------------------------
# Global Configuration (Runs for interactive and non-interactive sessions)
# -----------------------------------------------------------------------------
set fish_greeting

fish_add_path $HOME/.local/bin
fish_add_path $HOME/.bun/bin

if type -q mise
    mise activate fish | source
end

# Editor setup
if type -q nvim
    set -gx VISUAL nvim
    set -gx EDITOR nvim
end

# -----------------------------------------------------------------------------
# Interactive Configuration
# -----------------------------------------------------------------------------
if status is-interactive
    if not string match -q linux $TERM
        set -gx NVIM_APPNAME nvim-full
        if type -q starship
            starship init fish | source
        end
        if type -q zoxide
            zoxide init fish | source
        end
        fish_config theme choose "Catppuccin Macchiato"
        alias ssh="TERM=xterm-256color command ssh"
        alias snvim='sudo env PATH="$PATH" nvim'
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
