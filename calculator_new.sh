#! /bin/bash

#addition fuction

echo "enter 1st number"
rean num1

echo "enter 2nd number"
read num2

echo "choose operation +, -, *, /"
read op

case $op in
	+) 
		echo "result =$(($num1 + $num2))"
		;;
	-)
		echo "result = $(($num1 - $num2))"
		;;
