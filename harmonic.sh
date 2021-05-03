#! /bin/bash
read -p "Enter the limit : " num
for (( count=1; count<=$num; count++ ))
do
series=1/$count
printf $series
done
