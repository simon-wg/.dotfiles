# -----------------------------------------------------------------------------
# Global Configuration (Runs for interactive and non-interactive sessions)
# -----------------------------------------------------------------------------
set fish_greeting

fish_add_path $HOME/.local/bin

if type -q nvim
    set -gx VISUAL nvim
    set -gx EDITOR nvim
end

# -----------------------------------------------------------------------------
# Interactive Configuration
# -----------------------------------------------------------------------------
if status is-interactive
    if not string match -q linux $TERM
        fish_config theme choose "Catppuccin Macchiato"
        alias ssh="TERM=xterm-256color command ssh"
        alias snvim='sudo env PATH="$PATH" nvim'
    end
end
