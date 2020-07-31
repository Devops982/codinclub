#!/bin/bash -x

IS_PART_TIME=1;
IS_FULL_TIME=2;
MAX_HRS_IN_MONTH=100;
EMP_RATE_PER_HR=20;
NUM_WORKING_DAYS=20;

totalemphr=0;
totalworkingdays=0;

while [[ $totalemphrs -lt $MAX_HRS_IN_MONTH && $totalworkingdays -lt $NUM_WORKING_DAYS ]]
do
	((totalworkingdays++))
	empcheck=$((RANDOM%3));
	case $empcheck in
		$IS_FULL_TIME)
			emphrs=8
			;;
		$IS_PART_TIME)
			emphrs=4
			;;
		*)
			emphrs=0
			;;
	esac
	totalemphr=$(($totalemphr+$emphrs))
done

totalsalary=$(($totalemphr*$EMP_RATE_PER_HR));

		
		
