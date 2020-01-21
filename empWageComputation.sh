#!/bin/bash -x
echo "Welcome to Employee Wage "
Num1=$((RANDOM%2))
if  [[ Num1 -eq 1 ]]
then
	echo "Employee Present"
else
	echo "Employee Absent"
fi
