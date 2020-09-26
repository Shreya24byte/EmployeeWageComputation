#!/bin/bash -x
echo "Welcome to Employee Wage Computation Program";

#Constants
EMPLOYEE_RATE_PER_HOUR=20;
FULL_DAY_HOUR=8;

#Attendance check and wage calculation
attendance=$((RANDOM%2));
if [ $attendance -eq 1 ];
then
        echo "Employee is present";
	dailyWage=$(($EMPLOYEE_RATE_PER_HOUR * $FULL_DAY_HOUR));
else
        echo "Employee is absent";
	dailyWage=0;
fi

echo "Employee daily wage:" $dailyWage;
