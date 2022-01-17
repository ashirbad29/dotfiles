# Setup fzf
# ---------
if [[ ! "$PATH" == */home/ashirbad/.fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/home/ashirbad/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/ashirbad/.fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/home/ashirbad/.fzf/shell/key-bindings.zsh"
