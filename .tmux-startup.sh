#!/bin/bash
tmux start-server

SESSION_NAME="yhk"

tmux has-session -t "$SESSION_NAME" 2>/dev/null
if [ $? -eq 0 ]; then
  echo "Session '$SESSION_NAME' already exists. Attaching..."
  tmux attach -t "$SESSION_NAME"
  exit 0
fi

tmux new-session -d -s "$SESSION_NAME" -n "dev" -c "$HOME/repos/microfrontend"
tmux set-option -t "$SESSION_NAME" -g base-index 1
tmux set-option -t "$SESSION_NAME" -g pane-base-index 1

tmux new-window -t "$SESSION_NAME":2 -n "clanker" -c "$HOME/repos/microfrontend"
tmux new-window -t "$SESSION_NAME":3 -n "zsh" -c "$HOME"
tmux new-window -t "$SESSION_NAME":4 -n "zsh" -c "$HOME"
tmux new-window -t "$SESSION_NAME":5 -n "zsh" -c "$HOME"
tmux new-window -t "$SESSION_NAME":6 -n "zsh" -c "$HOME"
tmux new-window -t "$SESSION_NAME":7 -n "zsh" -c "$HOME"
tmux new-window -t "$SESSION_NAME":8 -n "zsh" -c "$HOME"

tmux attach -t "$SESSION_NAME"
