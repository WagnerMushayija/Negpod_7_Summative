#!/bin/bash
.
# File to store student records
STUDENT_FILE="students-list_1023.txt"

# Function to create a student record
create_student() {
    read -p "Enter student email: " email
    read -p "Enter student age: " age
    read -p "Enter student ID: " id
    
    # Save the student record
    echo "$id,$email,$age" >> $STUDENT_FILE
    echo "Student record created successfully."
}

# Function to view all students
view_students() {
    if [ -f $STUDENT_FILE ]; then
        cat $STUDENT_FILE
    else
        echo "No student records found."
    fi
}

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


  case $option in
        1) create_student ;;
        2) view_students ;;
        3) delete_student ;;
        4) update_student ;;
        5) exit 0 ;;
        *) echo "Invalid option. Please try again." ;;
    esac
done
