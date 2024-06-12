#!/bin/bash

# File icontaining student records
STUDENT_FILE="students-list_1023.txt"

# Output file for student emails
EMAIL_FILE="student-emails.txt"

if [ -f $STUDENT_FILE ]; then
    cut -d ',' -f 2 $STUDENT_FILE > $EMAIL_FILE
    echo "Student emails have been saved to $EMAIL_FILE."
else
    echo "No student records found."
fi
