 #!/bin/bash

 echo "Welcome To employee computation program"

 #Variable for checking the attendence

 attendence_chk=$((RANDOM%2)) #0/1

 # Constant variable
 is_present=1
 full_day_hour=8
 wage_per_hour=20
 
 salary=0
 # To check the attendence of the employee
 if [ $attendence_chk -eq $is_present ]
 then
     salary=$(($full_day_hour * $wage_per_hour))
     echo "Employee is Present for full day and the salary $salary"
 else
     echo "Employee is Absent and the salary is $salary"
 fi
