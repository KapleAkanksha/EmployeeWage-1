#!/bin/bash -x
echo "Welcome to Employee Wage"
#CONSTANTS
WAGE_PER_HOURS=20
HOURS_IN_MONTH=100

#VARIABLES
totalHours=0
workingDays=0
while [[ $totalHours -lt $HOURS_IN_MONTH && $workingDays -lt $WAGE_PER_HOURS  ]]
do
	Employee_check=$((RANDOM%3))
		case $Employee_check in
		0)
				Employee_Hours=4
				((workingDays++))			
				;;
		1)
				Employee_Hours=8
				((workingDays++))
				;;
		2)
				Employee_Hours=0
				;;
		esac
		#calculating total employee hours#  
		totalHours=$((totalHours + Employee_Hours))
done 
totalSalary=$((totalHours * WAGE_PER_HOURS))
