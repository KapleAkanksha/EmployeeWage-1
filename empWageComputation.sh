#!/bin/bash -x
echo "Welcome to Employee Wage"
WAGE_PER_HOURS=20
HOURS_IN_MONTH=100

#VARIABLES
totalHours=0
workingDays=0
function  getEmployeeWorkingHours()
{		
		case $1 in
		0)
				Employee_Working_Hours=4
				((workingDays++))			
				;;
		1)
				Employee_Working_Hours=8
				((workingDays++))
				;;
		2)
				Employee_Working_Hours=0
				;;
		esac
		echo $Employee_Working_Hours

}

while [[ $totalHours -lt $HOURS_IN_MONTH && $workingDays -lt $WAGE_PER_HOURS  ]]
do
		#using function  generate random number#
		Employee_Working_Hours=$( getEmployeeWorkingHours $((RANDOM%3)) )
		#calculating total employees working hours#  
		totalHours=$((totalHours + Employee_Working_Hours))
done 
totalSalary=$((totalHours * WAGE_PER_HOURS))


