#!/bin/bash

STUDENT_FILE="students-list_1023.txt"

# create student record
create_student() {
    echo "Enter student ID:"
    read id
    echo "Enter student email:"
    read email
    echo "Enter student age:"
    read age
    echo "$id, $email, $age" >> $STUDENT_FILE

    echo "Student record created"
         echo "Press 1 to exit or any other number to continue"
         read main
        if [ "$main" -eq 1 ]
          then
          echo "Thank you for using Alu registration system"
          sleep 1
          echo "goodbye"
          exit
       fi
}

#view student record

view_students() {
    if [ -f $STUDENT_FILE ]; then
        echo "-------------------------------------------------"
        printf "%-10s %-30s %-5s\n" "Student ID" "Email" "Age"
        echo "-------------------------------------------------"
        while IFS=, read -r id email age; do
            printf "%-10s %-30s %-5s\n" "$id" "$email" "$age"
        done < $STUDENT_FILE
        echo "-------------------------------------------------"
    else
        echo "No student records found."
    fi
}

#delete student record
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
#update student record
update_student() {
    echo "Enter student ID to update:"
    read id
    if [ -f $STUDENT_FILE ]; then
        if grep -q ", $id" $STUDENT_FILE; then
            grep -v ", $id" $STUDENT_FILE > temp.txt
            mv temp.txt $STUDENT_FILE
            echo "Enter new email:"
            read new_email
            echo "Enter new age:"
            read new_age
            echo "$new_email, $new_age, $id" >> $STUDENT_FILE
            echo "Student record updated."
        else
            echo "Student ID not found."
        fi
    else
        echo "No student records found."
    fi
}

while true; do
    echo "1. Create Student Record"
    echo "2. View All Students"
    echo "3. Delete Student Record"
    echo "4. Update Student Record"
    echo "5. Exit"
     read -p "Choose an option: " option
    case $option in
        1) create_student ;;
        2) view_students ;;
        3) delete_student ;;
        4) update_student ;;
        5) exit 0 ;;
        *) echo "Invalid option." ;;
    esac
done
done
