#!/bin/bash

declare -a workspaces=(
[0]="$HOME/Documents/LayBlu/Componentes-UI/"
[1]="$HOME/Dev/Learning/ReactJs/firststeps"
[2]="$HOME/Dev/Learning/ReactJs/digital-bussines-card"
[3]="$HOME/Dev/Learning/JavaScript/AJAX/AJAXII"
[4]="$HOME/Dev/LayBlu/layblu-ui-page/"
[5]="$HOME/Dev/txcode/"
[6]="$HOME/Dev/Learning/ReactJs/react-context/"
)

date=$(date '+%d/%m/%G')
hour=$(date '+%H:%M')

echo "Hello $USER!! 👋"
echo "Today is $date at $hour 📅"
echo "-----------------------"

echo "What are you going to work 🔧 on today ?
  0 > LayBlu-Components
  1 > First steps in ReactJs
  2 > Digital bussines card with React
  3 > Learning AJAX
  4 > Layblu UI Page
  5 > Tx Code Project with React
  6 > React Context ⚛
  "

# Read input
read selectWorkspace

if [[ $selectWorkspace -gt -1 && $selectWorkspace -lt ${#workspaces[@]} ]]; then
  cd ${workspaces[$selectWorkspace]}
  nvim .
else 
  echo "That workspace doesn't exist!!"
fi
