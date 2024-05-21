#!/usr/bin/env bash

if [[ $# -eq 1 ]]; then
    selected=$1
else
    selected=$(find ~/Dev/ ~/ -mindepth 1 -maxdepth 1 -type d | fzf)
fi

if [[ -z $selected ]]; then
    exit 0
fi

selected_name=$(basename "$selected" | tr . _)
tmux_running=$(pgrep tmux)

if [[ -z $TMUX ]] && [[ -z $tmux_running ]]; then
    tmux -u new-session -s $selected_name -c $selected
    exit 0
fi

if ! tmux -u has-session -t=$selected_name 2> /dev/null; then
    tmux -u new-session -ds $selected_name -c $selected
fi

tmux -u switch-client -t $selected_name
