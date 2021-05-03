#! /bin/bash
read -p "Enter the number : " num
count=1
value=0
max=$(( 2**num ))
echo "maximum limit= " $max
while [ $(( 2**count )) -le $max ]
do
	value=$(( count**2 ))
	echo $count" power of 2 = "$value
	count=$(( count+1 ))
done
