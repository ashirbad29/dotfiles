# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1200
SAVEHIST=1000
bindkey -e

# source ~/.zsh/zsh-autocomplete/zsh-autocomplete.plugin.zsh
# zstyle ':autocomplete:*' min-input 1  # characters

# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
# zstyle :compinstall filename '/home/ashirbad/.zshrc'

# autoload -Uz compinit
# compinit
# End of lines added by compinstall

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

[ -f ~/.fzf.bash ] && source ~/.fzf.zsh

# some more ls aliases
alias ll='exa --long --icons --all'
alias la='ls -A'
alias l='ls -CF'

source $HOME/.aliases
export PATH="$PATH:$HOME/.local/bin/"

# nvm
export NVM_DIR=~/.nvm
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

# rails
# [[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# zsh-autosugesstion
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
export FZF_DEFAULT_COMMAND='fd --type f --type d --follow --exclude .git --exclude node_modules'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

# My Scripts / bash functions
source ~/auto-scripts/obsbackup.sh

eval "$(starship init zsh)"
alias config='/usr/bin/git --git-dir=/home/ashirbad/.dotfiles/ --work-tree=/home/ashirbad'
