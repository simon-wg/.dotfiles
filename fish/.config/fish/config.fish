if status is-interactive
    # Commands to run in interactive sessions can go here
end

set EDITOR nvim

starship init fish | source
zoxide init fish | source

# Environment variables
set -x BUN_INSTALL "$HOME/.bun"
set -x EDITOR "nvim"
set -x AZURE_RESOURCE_NAME "sabina-ai-swedencentral"

switch $hostname
    case '5CG04891L4'
		set -x PYENV_ROOT "$HOME/.pyenv"
        fish_add_path $HOME/.opencode/bin
        fish_add_path $HOME/.opencode/bin
        fish_add_path $HOME/.pyenv/bin
    case '*'
		fish_add_path $HOME/.local/share/gem/ruby/3.4.0/bin
		fish_add_path $HOME/.local/share/gem/ruby/3.4.0/bin
end

fish_add_path $HOME/.local/bin
fish_add_path $BUN_INSTALL/bin
fish_add_path $HOME/.cargo/bin
