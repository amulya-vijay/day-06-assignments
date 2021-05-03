#! /bin/bash
read -p "Enter the number : " num
echo $num
for (( counter=2; counter<=$num; counter++ ))
do
if [ $(( num%counter )) -eq 0 ]
then
	break
fi
done
if [ $num -eq $counter ]
then
	echo "prime"
else
        echo "not a prime"
fi
