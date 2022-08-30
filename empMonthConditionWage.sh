#!/bin/bash
empRatePerHr=20;
WorkingHour=0;
totalSalary=0;
totalWorkingHour=0;
day=1;
while [[ $day -le 20 && $totalWorkingHour -lt 100 ]]
do
	isPresent=$((RANDOM%3));
	case $isPresent in
		0)
		WorkingHour=0;
		;;
		1)
		WorkingHour=8;
		;;
		2)
		WorkingHour=4;
		;;
	esac
	totalWorkingHour=$(($totalWorkingHour + $WorkingHour));
	if [ $totalWorkingHour -gt 100 ]
	then
		totalWorkingHour=$(($totalWorkingHour - $WorkingHour))
		break;
	fi
	salary=$(($empRatePerHr * $WorkingHour));
	totalSalary=$(($totalSalary + $salary));
	((day++));
done
echo "employee Total Salary is $totalSalary. And Total Working Hours are $totalWorkingHour"
