#!/bin/bash

echo "Welcome To employee computation program"

attendence_chk=$(( RANDOME%2 ))
echo "$attendence_chk"

if [ $attendence_chk -eq 1 ]
then 
    echo "Employee is Present"

else 
    echo "Employee is Absent"
fi
