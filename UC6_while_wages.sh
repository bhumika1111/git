#!/bin/bash -x


isPartTime=1
isFullTime=2
empRatePerHr=20
totalsalary=0
numOfworkingDays=20
maxRateInMonth=100

totalEmpHr=0
totalworkingDays=0

while [[ $totalEmpHr -lt $maxRateInMonth &&
         $totalworkingDays -lt $numOfworkingDays  ]]
do
        ((totalworkingDays++))
          randomCheck=$((RANDOM%3))
case $randomCheck in
                        $isPartTime )
                                empHrs=4
                         ;;
                        $isFullTime )
                                empHrs=8
                         ;;
                         *)
                                empHrs=0
                         ;;

        esac

        totalEmpHr=$(($totalEmpHr+$empHrs))
done

totalsalary=$(($totalEmpHr*$empRatePerHr))
