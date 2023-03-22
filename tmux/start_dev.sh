#!/bin/bash

tmux new -d -s dev -x "$(tput cols)" -y "$(tput lines)"

tmux new-window -t dev:1 -n 'code'
tmux split-window -t 'code' -hl "74%"
# tmux send-keys -t 'code.0' 'cd path/to/code' C-m 'clear' C-m
# tmux send-keys -t 'code.1' 'cd path/to/code' C-m 'clear' C-m

tmux a -t 'dev:code.0'
