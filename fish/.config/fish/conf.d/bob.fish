set -l bob_path "$HOME/.local/share/bob"

if test -d $bob_path
    source "$bob_path/env/env.fish"
end
