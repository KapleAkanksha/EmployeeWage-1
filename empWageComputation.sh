#!/bin/bash -x
echo "Welcome to Employee Wage"
PART_TIME_HOURS=4
WAGE_PER_HOURS=20
FULL_DAY_HOURS=8
if  [[ $((RANDOM%3)) -eq 1 ]]
then
	echo "Employee Present"
	##FULL TIME WAGES##
	echo "DailyWages = $(($WAGE_PER_HOURS * $FULL_DAY_HOURS))"	
	elif [[ $((RANDOM%3)) -eq 2 ]]
	then
	##PART TIME WAGES##
	echo "PartTimeWages = $(($WAGE_PER_HOURS * $PART_TIME_HOURS))"
else
	echo "Employee Absent"
fi
