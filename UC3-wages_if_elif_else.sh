#!/bin/bash -x


isPartTime=1
isFullTime=2
empRatePerHr=20
randomCheck=$((RANDOM%3))

if [ $isPartTime -eq $randomCheck ]
then
        empHrs=4
elif [ $isFullTime -eq $randomCheck ]
then
	empHr=8
else
	empHr=0
fi
salary=$(( $empHr*$empRatePerHr))
