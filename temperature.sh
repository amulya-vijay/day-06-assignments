#! /bin/bash
function cel_to_fahr() {
	temp=$1
	if [ $1 -ge 0 -a $1 -le 100 ]
	then
		degF=$(( (temp*9/5)+32 ))
		echo $degF
	else
		echo "Enter the temperature in the range of (0,100)"
	fi
}
function fahr_to_cel() {
	temp=$1
	if [ $1 -ge 32 -a $1 -le 212 ]
	then
	degC=$(( (temp-32)*5/9 ))
		echo $degC
	else
		echo "Enter the temperature in the range of (32,212)"
	fi
}
read -p "enter the temperature: " temp
read -p "Choose the conversion: 1) Celsius to Fahrenheit  2) Fahrenheit to Celsius " choice
case $choice in
	1)
		cel=$( cel_to_fahr $temp )
		echo "Temperature in Fahrenheit : " $cel
	;;
	2)
		fahr=$( fahr_to_cel $temp )
		echo "Temperature in Celsius : " $fahr
	;;
	*)
		echo "invalid option"
	;;
esac
