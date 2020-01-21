#!/bin/bash -x
echo "Welcome to Employee Wage"
PART_TIME_HOURS=4
WAGE_PER_HOURS=20
FULL_DAY_HOURS=8
Employee_check=$((RANDOM%2))
case $Employee_check in
		0)
			echo "PartTimeWages = $(($WAGE_PER_HOURS * $PART_TIME_HOURS))"
			;;
		1)
			echo "FullTimeWages = $(($WAGE_PER_HOURS * $FULL_DAY_HOURS))"
			;;
		*)
			echo "Please enter valid number"
esac
