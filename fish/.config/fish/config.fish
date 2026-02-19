# -----------------------------------------------------------------------------
# Global Configuration (Runs for interactive and non-interactive sessions)
# -----------------------------------------------------------------------------
set fish_greeting

fish_add_path $HOME/.local/bin

# -----------------------------------------------------------------------------
# Interactive Configuration
# -----------------------------------------------------------------------------
if status is-interactive
    if not string match -q linux $TERM
        fish_config theme choose "Catppuccin Macchiato"
        alias ssh="TERM=xterm-256color command ssh"
        set -gx MAKEFLAGS -j(math (nproc) - 1)
    end
end
