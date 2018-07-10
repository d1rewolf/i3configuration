#!/bin/bash

theme=$1

#current=`i3-msg -t get_workspaces | grep -Po '"num":.' | awk -F":" '{print $2}'`
current=$(i3-msg -t get_workspaces  | grep -o '"name":"[^\"]*"' | awk -F"\"" '{print $4}')
selection=$(echo "$current" | rofi -theme $theme -dmenu -p "Enter ws name> ")

if [ -z "$selection" ]; then
	exit 0
fi

the_digit=$(echo $selection | grep '^[[:digit:]]')

if [ -z "$the_digit" ]; then
  for i in `seq 1 20`
  do
    echo $current
    if echo $current | grep "$i"; then
	  continue
	else
	  echo "Found: $i"
 	  name="$i: $selection"
      num="$i"
	  break
	fi
  done
else
   the_digit=$(echo $selection | grep -o '^[[:digit:]]')
  echo "HERE!!!"
  name="$selection"   
  num=$the_digit
fi

echo "NAME: $name"
echo "NUM: $num"

i3-msg move window to workspace $name
i3-msg workspace number $num
