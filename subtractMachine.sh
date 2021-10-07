#!/bin/bash 
#a short bas script to subtract two numbers
#this program will take  two arguments  
#it subtracts the smaller from the larger, then prints the result 
#then it counts down to one 
if [ $# -eq 0 ]
then 
	echo "There are no arguments. Please enter two numbers to be subtracted"
	exit 2
fi

num1=$1
num2=$2

echo "first number is $num1"
echo "second number is $num2"

if [ $num1 -lt $num2 ] 
then 
	echo "$num2 is larger than $num1"
	result=$(( num2 - num1 ))
else 
	echo "$num1 is larger than $num2"
	result=$(( num1 - num2 ))	
	
fi
echo "The difference between these number is $result"

echo "Time to count down!"
echo "$result"

until [ $result -lt 2 ]
do
	((result--))
	echo "$result"
done
echo "Thanks for subtracting with me"
