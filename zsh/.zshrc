source /usr/share/zsh/scripts/zplug/init.zsh

# The following lines were added by compinstall
zstyle :compinstall filename '/home/simon-wg/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

export PATH="$HOME/.cabal/bin:$HOME/.ghcup/bin:$PATH"
export CD_LS_COMMAND="l -a"

setopt autocd

alias cd="z"
alias ls="ls --color=auto"
alias grep="grep --color=auto"
alias l="ls"
alias ll="ls -l"
alias la="ls -la"

zplug "plugins/git",   from:oh-my-zsh
zplug "plugins/zoxide",   from:oh-my-zsh
zplug "mafredri/zsh-async", from:github
zplug "sindresorhus/pure", use:pure.zsh, from:github, as:theme
zplug "MichaelAquilina/zsh-you-should-use"
zplug "sunlei/zsh-ssh"
zplug "zsh-users/zsh-autosuggestions"
zplug "zshzoo/cd-ls"


# This NEEDS to be the last plugin
zplug "zsh-users/zsh-syntax-highlighting"

if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

zplug load
source /usr/share/nvm/init-nvm.sh
