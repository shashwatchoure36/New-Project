
#!/bin/bash

echo "WELCOME TO EMPLOYEE WAGE COMPUTATION PROGRAM"
echo "--------------------------------------------"

#constant variables
is_present_full_time=1
is_present_part_time=2
full_day_hour=8
part_time=4
wage_per_hour=20
total_working_days=20
max_working_hours=100

#initializing the variable
salary=0
daily_hour=0
total_working_hour=0
day=1

while [ $day -le $total_working_days -a $total_working_hour -le $max_working_hours ]
do
	attendance=$((RANDOM%3))		#Generates random number for attendance

	case $attendance in 
	$is_present_full_time) daily_hour=8
						   echo "Employee is Present for Full time"
					   		;;

	$is_present_part_time) daily_hour=4
					   	   echo "Employee is Present for Part time"
					   		;;

	0) daily_hour=0
	   echo "Employee is Absent"
   		;;
	esac


salary=$(($daily_hour * $wage_per_hour))
echo "Salary of an Employee is : "$salary
total_working_hour=$(($total_working_hour + $daily_hour))
echo "Total working hours : "$total_working_hour
echo "-----------------------------------"

((day++))
done

monthly_salary=$(($total_working_hour * $wage_per_hour))
echo "Monthly salary of an Employee is : "$monthly_salary