#!/bin/bash

declare -a workspaces=(
[0]="$HOME/Documents/LayBlu/Componentes-UI/"
[1]="$HOME/Dev/LayBlu/layblu-ui-page/"
[2]="$HOME/Dev/txcode/"
[3]="$HOME/Dev/Projects/todo-list/"
[4]="$HOME/Dev/Projects/pomo-san/"
[5]="$HOME/Dev/Projects/whether-pwa"
)

date=$(date '+%d/%m/%G')
hour=$(date '+%H:%M')

echo "Hello $USER!! 👋"
echo "Today is $date at $hour 📅"
echo "-----------------------"

echo "What are you going to work 🔧 on today ?
  0: Layblu Componentes-UI
  1: Layblu page
  2: TxCode 🧑‍💻
  3: Todo List ☑
  4: Pomo-san ⏲
  5: Whether PWA ⛅
  "

# Read input
read -p '[0 - 6]: ' selectWorkspace

if [[ $selectWorkspace -gt -1 && $selectWorkspace -lt ${#workspaces[@]} ]]; then
  cd ${workspaces[$selectWorkspace]}
  nvim .
else 
  echo "That workspace doesn't exist!!"
fi
