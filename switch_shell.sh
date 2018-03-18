#!/usr/bin/env bash

echo "Current shell is $SHELL"

echo "$SHELL" | grep -q "zsh"

#if [ grep -q "zsh" <<< "$SHELL" ]; then
if [ $? -eq 0 ]; then
  echo "Change shell to bash"
  chsh -s $(which bash)
else
  echo "Change shell to zsh"
  chsh -s $(which zsh)
fi
