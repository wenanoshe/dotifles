#!/bin/bash

# check to see is git command line installed in this machine
IS_GIT_AVAILABLE="$(git --version)"
if [[ $IS_GIT_AVAILABLE == *"version"* ]]; then
  echo "Git is Available"
else
  echo "Git is not installed"
  exit 1
fi

# Copy neovim custom config
cp -r $HOME/.config/nvim/lua/config ./neovim

# Bspwm config
# cp -r $HOME/.config/bspwm/bspwmrc .

# Sxhkd config 
# cp -r $HOME/.config/sxhkd/sxhkdrc .

# PUSH TO GITHUB #

# Check git status
gs="$(git status | grep -i "modified")"
echo "${gs}"

# If there is a new change
if [[ $gs == *"modified"* ]]; then
  echo "push"
fi

# push to Github
git add -uv;
git commit -m "New backup `date +'%d-%m-%Y %H:%M:%S'`";
git push origin master
