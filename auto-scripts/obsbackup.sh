#!/bin/zsh

function backobs() {
  # copy other dot files 
  # OBSEDIAN_VALUT = "/mnt/c/Users/ashir/Documents/Personal Wiki"
  cd /mnt/c/Users/ashir/Documents/Personal\ Wiki

  # check for changes
  gs="$(git status | grep -i "modified")"

  # If there is a new change
  if [[ $gs == *"modified"* ]]; then
    echo "push"
  fi

  # push to Github
  git add -A;
  git commit -m "New backup `date +'%d-%m-%y %H:%M:'`";
  git push origin main;

  cd ~
}

