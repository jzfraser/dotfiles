#!/bin/bash

# create session, use the current size of my terminal
# terminal size is important for setting up panes later
tmux new -d -s dev -x "$(tput cols)" -y "$(tput lines)"

# create coding window
tmux new-window -t dev:1 -n 'code'
# split window horizontally to have skinny left and large right panes
tmux split-window -t 'code' -hl "74%"

# change into code directory for easy cd into desired project
# tmux send-keys -t 'code.0' 'cd path/to/code' C-m 'clear' C-m
# tmux send-keys -t 'code.1' 'cd path/to/code' C-m 'clear' C-m

# attach to session with devspace window open
tmux a -t 'dev:code.0'
