if status is-interactive
    # Commands to run in interactive sessions can go here
end

set EDITOR nvim

starship init fish | source
zoxide init fish | source

switch $hostname
    case '5CG04891L4'
        fish_add_path ~/.opencode/bin
        fish_add_path ~/.opencode/bin
        fish_add_path ~/.pyenv/bin
    case '*'
		fish_add_path ~/.local/share/gem/ruby/3.4.0/bin
		fish_add_path ~/.local/share/gem/ruby/3.4.0/bin
end

fish_add_path ~/.local/bin
fish_add_path ~/.bun/bin
fish_add_path ~/.cargo/bin

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH
