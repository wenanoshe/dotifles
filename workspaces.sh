#!/bin/bash

# Colors
Red='\033[0;31m'
Green='\033[0;32m'
Yellow='\033[0;33m'
Blue='\033[0;34m'
Clear='\033[0m'
# ####

declare -a workspaces=(
[0]="$HOME/Dev/Projects/clickspersecond/"
[1]="$HOME/Dev/Projects/todo-list/"
[2]="$HOME/Dev/Projects/pomo-san/"
[3]="$HOME/Dev/Projects/weather-pwa/"
[4]="$HOME/Dev/Projects/weneedworkout/"
[5]="$HOME/Dev/Projects/layblu"
)

date=$(date '+%d/%m/%G')
hour=$(date '+%H:%M')

echo "Hello $USER!! 👋"
echo "Today is $date at $hour 📅"
echo "-----------------------"

echo "What are you going to work 🔧 on today ?
  1: Clicks per second 🧑‍💻
  2: Todo List ☑
  3: Pomo-san ⏲
  4: Whether PWA ⛅
  5: WeNeedWorkout 💪
  6: Layblu 🔷 
  "

# Read input

read -p "[0 - ${#workspaces[@]}]: " answer

selectWorkspace=$answer-1

if [[ $selectWorkspace -gt -1 && $selectWorkspace -lt ${#workspaces[@]} ]]; then
  cd ${workspaces[$selectWorkspace]}
  nvim .
else 
  echo "That workspace doesn't exist!!"
fi

