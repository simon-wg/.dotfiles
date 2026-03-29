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
        alias ssh="TERM=xterm-256color command ssh"
    end
end
