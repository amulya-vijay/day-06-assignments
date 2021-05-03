#! /bin/bash
read -p "Enter lower limit : " lower
read -p "Enter upper limit : " upper
for (( counter=$lower; counter<=$upper; counter++ ))
do
	for (( count=2; count<=counter; count++ ))
	do
		if [ $(( counter%count )) -eq 0 ]
		then
			break
		fi
	done
	if [ $counter -eq $count ]
	then
		echo $counter
	fi
done
