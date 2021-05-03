#! /bin/bash
read -p "Enter the value : " num
for (( count=2; num>1; count++ ))
do
	while [ $(( num%count )) -eq 0 ]
	do
		echo $count
		num=$(( num/count ))
	done
done
