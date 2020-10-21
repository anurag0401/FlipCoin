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

headcount=0
tailcount=0
while [[ $headcount -lt 21 && $tailcount -lt 21 ]]
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

if [ $headcount -gt $tailcount ]
then
	echo "head won"
	h=$(($headcount-$tailcount))
	echo "head won by count of:" $h
elif [ $headcount -lt $tailcount ]
then
	echo "tail won"
	t=$(($tailcount-$headcount))
	echo "tail won by count of:" $t
else
	echo "tie"
fi
