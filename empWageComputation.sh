#!/bin/bash -x
echo "Welcome to Employee Wage Computation Program";

#employee attendance check
attendance=$((RANDOM%2));
if [ $attendance -eq 1 ];
then
        echo "Employee is present";
else
        echo "Employee is absent";
fi
