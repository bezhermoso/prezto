#!/usr/bin/env zsh
#
function choose-base16 () {
  query="$1"
  theme=$(alias -L | awk -F= '/^alias base16_/ { print $1 }' | awk -Fbase16_ '{ print $2 }' | fzf -q "$query" --preview='')
  if [[ -n $theme ]]; then
    eval "base16_$theme"
  fi
}

