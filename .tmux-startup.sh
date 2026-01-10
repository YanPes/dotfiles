#!/bin/bash
tmux start-server

SESSION_NAME="Work"

tmux has-session -t "$SESSION_NAME" 2>/dev/null
if [ $? -eq 0 ]; then
  echo "Session '$SESSION_NAME' already exists. Attaching..."
  tmux attach -t "$SESSION_NAME"
  exit 0
fi

tmux new-session -d -s "$SESSION_NAME" -n "dev" -c "$HOME/Development"
tmux new-window -t "$SESSION_NAME":2 -n "zsh" -c "$HOME"
tmux new-window -t "$SESSION_NAME":3 -n "docs" -c "$HOME/Docs"

tmux attach -t "$SESSION_NAME"
