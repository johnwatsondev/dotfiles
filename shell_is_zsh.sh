#!/usr/bin/env bash

#if [ echo $SHELL | grep zsh | xargs % -eq 0]; then
# 上面的写完会报错 [: [: missing `]'

echo $SHELL | grep -q "zsh"
if [ $? -eq 0 ]; then
  echo "Founded zsh~"
else
  echo "Not found zsh~"
fi

#if [ eval "$(which zsh) --version" | grep 5. | xargs % -eq 0]; then

eval "$(which zsh) --version" | grep -q "5."
if [ $? -eq 0 ]; then
  echo "Zsh version is 5.*"
else
  echo "Zsh version is not 5.*"
fi
