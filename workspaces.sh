#!/bin/bash

# Colors
Red='\033[0;31m'
Green='\033[0;32m'
Yellow='\033[0;33m'
Blue='\033[0;34m'
Clear='\033[0m'
# ####

declare -a workspaces=(
[0]="$HOME/Dev/Projects/weather-pwa/"
[1]="$HOME/Dev/Projects/weneedworkout/"
[2]="$HOME/Dev/Projects/layblu"
)

date=$(date '+%d/%m/%G')
hour=$(date '+%H:%M')

echo "Hello $USER!! 👋"
echo "Today is $date at $hour 📅"
echo "-----------------------"

echo "What are you going to work 🔧 on today ?
  1: Whether PWA ⛅
  2: WeNeedWorkout 💪
  3: Layblu 🔷 
  "

# Read input

read -p "[1 - ${#workspaces[@]}]: " answer

selectWorkspace=$answer-1

if [[ $selectWorkspace -gt -1 && $selectWorkspace -lt ${#workspaces[@]} ]]; then
  cd ${workspaces[$selectWorkspace]}
  nvim .
else 
  echo "That workspace doesn't exist!!"
fi

