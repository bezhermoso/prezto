#!/usr/bin/env zsh

if [[ ! -f "${0:A:h}/external/fzf-git.sh" ]]; then
  return
fi

# WARN: Without this, zsh will exit at startup!
local turn_beep_on=0
if (( $options[beep] == "on" )); then
  turn_beep_on=1
  unset beep
  set nobeep
fi

source "${0:A:h}/external/fzf-git.sh"

if (( $turn_beep_on == 1 )); then
  set beep
  unset nobeep
fi

unset turn_beep_on
