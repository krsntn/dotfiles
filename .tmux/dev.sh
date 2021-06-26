#!/bin/sh

open_tmux_ide()
{
  if ! tmux has-session -t ide;
  then
    tmux new -s ide -d
    tmux split-window -h -p 25
    tmux select-pane -t 1
    tmux send-keys -t ide:1.1 nvim Enter
  fi
  tmux attach -t ide
}

echo "opening ide..."
open_tmux_ide
