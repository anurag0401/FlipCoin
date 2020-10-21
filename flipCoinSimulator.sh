#!/bin/bash

echo "Flip the Coin"

#uc-1 Display Head/Tail as Winner

coin=$(( $RANDOM%2 ))

if [ $coin -eq 0 ]
then
	echo "Heads win"
else
	echo "Tails win"
fi

#uc-2 show number of times head and tail has won
headcount=0
tailcount=0
for (( i=0; i<=10; i++ ))
do
	coin=$(( $RANDOM%2 ))
	if [ $coin -eq 0 ]
	then
		echo "Heads win"
		headcount=$(($headcount+1))
	else
		echo "Tails win"
		tailcount=$(($tailcount+1))
	fi
done
echo "Number of times Heads has won:" $headcount
echo "Number of times Tails has won:" $tailcount
