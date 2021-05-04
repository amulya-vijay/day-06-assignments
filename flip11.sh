#! /bin/bash
heads=0
tails=0
count=0
while [ $heads -le 10 -a $tails -le 10 ]
do
	if [ $(( RANDOM%2 )) -eq 1 ]
	then
		heads=$(( heads+1 ))
	else
		tails=$(( tails+1 ))
	fi
	count=$(( count+1 ))
	#echo "Number of coin flips : "$count
done
echo "Number of coin flips : "$count

if [ $heads -eq 11 ]
then
echo "Number of heads : "$heads
elif [ $tails -eq 11 ]
then
echo "Number of tails : "$tails
fi
