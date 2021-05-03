#! /bin/bash
read -p "Enter the number : " num
temp=1
for (( count=1; count<=$num; count++ ))
do
	temp=$(( temp*count ))
done
echo $num"Factorial - "$num"! = "$temp
