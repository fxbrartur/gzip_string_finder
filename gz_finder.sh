#!/bin/zsh

echo "Hey you!"

sleep 1

echo "Enter the term you're looking for here:"

read term

sleep 1

echo "Now, enter the name of the output file (for example: term.log):"

read output

grep -E $term *.gz > $output

sleep 1

if [ -s $output ]
then
	echo "It's been saved on $output; have a wonderful day!"
else
	echo "These logs do not contain this term. Are you certain about this input? Recheck it and run the script again."
fi	