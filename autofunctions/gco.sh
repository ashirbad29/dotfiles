#!/bin/zsh
 
fzf-git-branch() {
    git rev-parse HEAD > /dev/null 2>&1 || return
 
    git branch --color=always --all --sort=-committerdate |
        grep -v HEAD |
        fzf --height 50% --ansi --no-multi --preview-window right:65% |
        sed "s/.* //"
}
 
gco() {
	git rev-parse HEAD > /dev/null 2>&1 || return
 
    local branch
 
    branch=$(fzf-git-branch)
    if [[ "$branch" = "" ]]; then
        echo "No branch selected."
        return
    fi
 
    # If branch name starts with 'remotes/' then it is a remote branch. By
    # using --track and a remote branch name, it is the same as:
    # git checkout -b branchName --track origin/branchName
    if [[ "$branch" = 'remotes/'* ]]; then
        git checkout --track $branch
    else
        git checkout $branch;
    fi
}

cpbr() {
    local branch
    branch=$(fzf-git-branch)
    if [[ "$branch" = "" ]]; then
        echo "No branch selected"
        return
    fi

    echo "$branch" | xclip -selection clipboard
}