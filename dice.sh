#!/bin/bash

#Ask how many dice you want to roll represented by num_dice.

echo "How many dice?"
	read num_dice
	
	if [ $num_dice -ge 1 ]
		then	
			sleep 2
			echo "$num_dice dice will be used."
		else 
			&>/dev/null
			sleep 2
			echo "Please input a valid integer."
			exit 1
		fi

#Ask how many sides will be on the dice represented by num_sides.

echo "How many sides on the dice?"
	read num_sides
	
	while [ $num_dice -gt 0 ]
		do
			sleep 2
			echo $(( $RANDOM % $num_sides + 1 ))
			num_dice=$(( $num_dice - 1 ))
		done
