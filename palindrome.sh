#! /bin/bash
function palindrome() { 
	num1=$1
	num2=$2
	temp=0
	#limit=10
	while [ $num1 -gt 0 ] #-a $temp -lt $limit ]
	do
		if [ $num1 -ge 0 ]
		then
			temp=$(( num1%10 ))
			rev=$(( rev*10 + temp ))
			num1=$(( num1/10 ))
		fi
	done
	if [ $rev -eq $2 ]
	then
		echo "The number is palindrome"
	else
		echo "not a palindrome"
	fi
}
read -p "Enter first number : " num1
read -p "Enter second number : " num2
pal_num=$( palindrome $num1 $num2)
echo $pal_num
