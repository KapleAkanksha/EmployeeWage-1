#!/bin/bash -x
echo "Welcome to Employee Wage"
WAGE_PER_HOURS=20

PartTime=1
FullTime=2
TotalSalary=0
WorkingDays=20
for ((i=1; i<=$WorkingDays; i++ ))
do
	Employee_check=$((RANDOM%3))
		case $Employee_check in
		$PartTime)
				Employee_Hours=4
				
			;;
		$FullTime)
				Employee_Hours=8
			;;
		*)
				Employee_Hours=0
esac

## calculating employee part time and full time wages##  
Wages_for_Month=$(($Employee_Hours * $WAGE_PER_HOURS))
done
