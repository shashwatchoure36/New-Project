#!/bin/bash

echo "Welcome To Employee Wage Computation Program"

# Variable for checking the attendence
attendence_chk=$((RANDOM%3)) #0/1/2

# constant variables
is_present_full_time=1
is_present_part_time=2
full_day_hour=8
part_time_hour=4
wage_per_hour=20


# initializing the variables
salary=0
daily_hour=0

case $attendence_chk in

$is_present_full_time) daily_hour=8
                       echo "The Employee is Present for Full day"
                       ;;
$is_present_part_time) daily_hour=4
                       echo "The Employee is Present for Half day"
                       ;;
0) echo "The Employee is Absent"
;;
esac

salary=$(($daily_hour * $wage_per_hour))
echo "Salary of an Employee is $salary"