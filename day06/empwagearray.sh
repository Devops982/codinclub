#!/bin/bash -x

IS_PART_TIME=1;
IS_FULL_TIME=2;
MAX_HRS_IN_MONTH=100;
EMP_RATE_PER_HR=20;
NUM_WORKING_DAYS=20;

totalemhr=0;
totalworkingdays=0;

function getworkhrs() {
	case $1 in
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
}

function getempwage () {
	echo $(($1*$EMP_RATE_PER_HR))
}

while [[ $totalemphr -lt $MAX_HRS_IN_MONTH && $totalworkingdays -lt $NUM_WORKING_DAYS ]]
do
	((totalworkingdays++))
	getworkhrs $((RANDOM%3))
	totalemphr=$(($totalemphr + $emphrs))
	dailywages[$totalworkingdays]=$((emphrs8$EMP_RATE_PER_HR))
done

totalsalary="$( getempwage $totalemphr )"


			
