#! /bin/bash
function prime(){
	num=$1
	flag=0
	for(( count=2; count<=$1; count++ ))
	do
		if [ $(( num%count )) -eq 0 ]
		then
			flag=1
			break
		fi
	done
	if [ $flag -eq 0 ]
	then
		echo $1" is a Prime number."
	else
		echo $1" is not a Prime number."
	fi
}
function palindrome(){
	num=$1
	num1=$num
	temp=0
	while [ $num -gt 0 ]
	do
		if [ $num -ge 0 ]
		then
			temp=$(( num%10 ))
			rev=$(( rev*10+temp ))
			num=$(( num/10 ))
		fi
	done
	if [ $rev -eq $num1 ]
	then
		echo $1" is a palindrome"
	else
		echo $1" is not a palindrome"
	fi
}
read -p "Enter the number : " num
read -p "Choose an option- 1.Prime 2.Palindrome 3.Both : " choice
case $choice in
	1)
		prime_fun=$( prime $num )
		echo $prime_fun
	;;
	2)
		palindrome_fun=$( palindrome $num )
		echo $palindrome_fun
	;;
	*)
		echo "Invalid"
	;;
esac
