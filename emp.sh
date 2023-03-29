 #!/bin/bash

 echo "Welcome To employee computation program"

 #Variable for checking the attendence

 attendence_chk=$((RANDOM%2)) #0/1

 # Constant variable
 is_present=1
  
 # To check the attendence of the employee
 if [ $attendence_chk -eq $is_present ]
 then
     echo "Employee is Present for full day "
 else
     echo "Employee is Absent"
 fi