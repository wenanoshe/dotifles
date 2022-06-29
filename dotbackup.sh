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
cp -r /home/$USER/.config/nvim/lua/custom ./neovim

# Bspwm config
cp -r $HOME/.config/bspwm/bspwmrc .

# Sxhkd config 
cp -r $HOME/.config/sxhkd/sxhkdrc .

# PUSH TO GITHUB #

# Git stauts
git status
echo ' '

# Ask if continue
echo "Do you want to continue?
  1: Yes, 0: No"

read continue

if [[ $continue == 1 ]]; then
  # push to Github
  git add *;
  git commit -m "New backup `date +'%d-%m-%Y %H:%M:%S'`";
  git push origin main
else 
  echo 'Cancelled backup'
fi

