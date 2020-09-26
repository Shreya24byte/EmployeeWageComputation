#!/bin/bash -x
echo "Welcome to Employee Wage Computation Program";

#Constants
EMPLOYEE_RATE_PER_HOUR=20;
FULL_TIME=1;
PART_TIME=2;
MAX_WORKING_DAYS=20
MAX_WORKING_HOURS=100;

#Variables
monthlyWage=0;
totalWorkingDays=0;
totalWorkingHours=0;

while [[ $totalWorkingHours -lt $MAX_WORKING_HOURS && $totalWorkingDays -lt $MAX_WORKING_DAYS ]];
do
	((totalWorkingDays++));
	attendance=$((RANDOM%3));
	case $attendance in
		$FULL_TIME)
			workHours=8;
			dailyWage=$(($EMPLOYEE_RATE_PER_HOUR * $workHours));
			;;
		$PART_TIME)
			workHours=4;
			dailyWage=$(($EMPLOYEE_RATE_PER_HOUR * $workHours));
			;;
		*)
			workHours=0;
			dailyWage=0;
			;;
	esac

	echo "Employee daily wage:" $dailyWage;
	#Adding up daily wages
	monthlyWage=$(($monthlyWage + $dailyWage));
	#Adding up total working hours
	totalWorkingHours=$(($totalWorkingHours + $workHours));
done

echo "Employee monthly wage:" $monthlyWage;
