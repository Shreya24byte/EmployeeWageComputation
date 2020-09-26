#!/bin/bash -x
echo "Welcome to Employee Wage Computation Program";

#Constants
EMPLOYEE_RATE_PER_HOUR=20;
FULL_DAY_HOUR=8;
PART_TIME_HOUR=4;

#Attendance check and wage calculation
attendance=$((RANDOM%3));
if [ $attendance -eq 1 ];
then
        echo "Employee is present";
	dailyWage=$(($EMPLOYEE_RATE_PER_HOUR * $FULL_DAY_HOUR));
elif [ $attendance -eq 2 ];
then
	echo "Employee is present part time"
	dailyWage=$(($EMPLOYEE_RATE_PER_HOUR * $PART_TIME_HOUR));
else
        echo "Employee is absent";
	dailyWage=0;
fi

echo "Employee daily wage:" $dailyWage;
