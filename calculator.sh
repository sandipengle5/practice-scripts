#!/bin/bash


#basic calculator

echo " enter first number: "
read num1

echo " enter second number: "
read num2

echo " choose operation +, -, *, / :"
read op

case $op in
	+)
		echo " result = $((num1+num2))"
		;;
	-)
		echo " result = $((num1-num2))"
		;;
	\*)
		echo " result =$((num1*num2))"
		;;
	/)
	if ["$num2" -eq 0]; then 
		echo " error : Division by zero is not allowed"
	else 
		echo " result = $((num1 / num2))"
	fi
	;;
	*) 
		echo " invalid operator "
		;;
esac 


