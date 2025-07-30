if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Created by `pipx` on 2025-05-24 10:10:28
set PATH $PATH /home/simon-wg/.local/bin

set EDITOR nvim

starship init fish | source
zoxide init fish | source

# opencode
fish_add_path /home/swestli1/.opencode/bin

# Created by `pipx` on 2025-07-03 07:13:58
set PATH $PATH /home/swestli1/.local/bin

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH
