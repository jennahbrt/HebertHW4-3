#!/bin/bash
#this is a short bash script taht take four arguments 
#the first three numbers are added together
#this result, as well as the fourth argument are inputed into teh subtraction machine
if [ $# -lt 4 ]
then 
	echo "Not enough arguments! The three amigos ask for four arguments, please"
	exit 3
elif [ $# -gt 4 ]
	then
	echo "Too many arguments! try again"
	exit 5
fi

num1=$1
num2=$2
num3=$3
num4=$4

sum=$((num1+num2+num3))
echo "Sum is $sum"

./subtractMachine.sh $sum $num4
