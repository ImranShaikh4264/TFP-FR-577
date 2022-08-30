#!/bin/bash
empRatePerHr=20;
workingHour=0;
totalsalary=0;
for ((day=1; day<=20; day++))
do
isPresent=$((RANDOM%3));
case $isPresent in 
	0)
	workingHour=0;
	;;
	1)
	workingHour=8;
	;;
	2)
	workingHour=4;
	;;
	esac
	salary=$(($empRatePerHr * $workingHour));
	totalsalary=$(($totalsalary + $salary));
done
echo "Employee total salary of month is = $totalsalary"
