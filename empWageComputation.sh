#!/bin/bash -x
echo "Welcome to Employee Wage"
WAGE_PER_HOURS=20
FULL_DAY_HOURS=8
Num1=$((RANDOM%2))
if  [[ Num1 -eq 1 ]]
then
	echo "Employee Present"
	echo "WAGES = $(($WAGE_PER_HOURS * $FULL_DAY_HOURS))"
else
	echo "Employee Absent"
	
fi
