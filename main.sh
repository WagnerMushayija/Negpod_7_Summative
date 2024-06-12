#!/bin/bash

# File to store student records
STUDENT_FILE="students-list_1023.txt"

#Main menu
while true; do
	echo "----------------------------"
	echo "ALU REGISTRATION SYSTEM"
	 echo "----------------------------"
    echo "1. Create Student"
    echo "2. View Students"
    echo "3. Delete Student"
    echo "4. Update Student"
    echo "5. Exit"
    read -p "Choose an option: " option
    # Function to delete a student record
delete_student() {
    read -p "Enter student ID to delete: " id
    
    if [ -f $STUDENT_FILE ]; then
        grep -v "^$id," $STUDENT_FILE > temp.txt
        mv temp.txt $STUDENT_FILE
        echo "Student record deleted successfully."
    else
        echo "No student records found."
    fi
}

