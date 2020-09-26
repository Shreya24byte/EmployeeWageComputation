#!/bin/bash -x
echo "Welcome to Employee Wage Computation Program";

#Constants
EMPLOYEE_RATE_PER_HOUR=20;
FULL_TIME=1;
PART_TIME=2;

#Attendance check and wage calculation
attendance=$((RANDOM%3));
case $attendance in
	$FULL_TIME)
		workHours=8;
		dailyWage=$(($EMPLOYEE_RATE_PER_HOUR * $workHours));
		echo "Employee is present full time"
		;;
	$PART_TIME)
		workHours=4;
		dailyWage=$(($EMPLOYEE_RATE_PER_HOUR * $workHours));
		echo "Employee is present part time"
		;;
	*)
		workHours=0;
		dailyWage=0;
		echo "Employee is absent"
		;;
esac

echo "Employee daily wage:" $dailyWage;
