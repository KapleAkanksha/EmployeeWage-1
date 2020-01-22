#!/bin/bash -x
echo "Welcome to Employee Wage"
WAGE_PER_HOURS=20
HOURS_IN_MONTH=100

#VARIABLES
totalHours=0
workingDays=0
declare -A EmployeeDailyWages 
function  getEmployeeWorkingHours()
{
		case $1 in
		0)
				Employee_Working_Hours=4
				;;
		1)
				Employee_Working_Hours=8
				;;
		*)
				Employee_Working_Hours=0
				;;
		esac
		echo $Employee_Working_Hours
}

#fuction to calculate daily wages
function getcalculateDailyWage()
{
	EmployeeWages=$(($Employee_Working_Hours * $WAGE_PER_HOURS))
	echo $EmployeeWages

}

while [[ $totalHours -lt $HOURS_IN_MONTH && $workingDays -lt $WAGE_PER_HOURS  ]]
do
		#using function  generate random number#
		Employee_Working_Hours=$( getEmployeeWorkingHours $((RANDOM%2)) )
		#calculating total employees working hours#  
		totalHours=$((totalHours + Employee_Working_Hours))
		
		#calculating  employee daily wages#
		EmployeeDailyWages[$workingDays]=$( getcalculateDailyWage $Employee_Working_Hours )
		
		#calculating total salary#
		totalSalary=$((totalSalary + ${EmployeeDailyWages[$workingDays]} ))
		#echo  "days = $workingDays "
		((workingDays++))
done 

echo "Days :${!EmployeeDailyWages[@]}"
echo "Employee Daily Wages:${EmployeeDailyWages[@]}"
echo "Employee Monthly Salary:$totalSalary"
