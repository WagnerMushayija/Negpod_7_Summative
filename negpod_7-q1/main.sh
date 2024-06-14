#!/bin/bash
STUDENT_FILE="students-list_1023.txt"
while true;
do
#create student record
create_student() {
    echo "Enter student email:"
    read email
    echo "Enter student age:"
    read age
    echo "Enter student ID:"
    read id
    echo "$email, $age, $id" >> $STUDENT_FILE
<<<<<<< HEAD:main.sh
<<<<<<< HEAD
    echo "Student record created.
=======
    echo "Student record created."
>>>>>>> f8c6c48446712059f24b760ecc1b3c4773087bc7
=======
    echo "Student record created."sleep 1
         echo "Press 1 to exit or any other number to continue"
         read main
        if [ "$main" -eq 1 ]
          then
          echo "Thank you for using Alu registration system"
          sleep 1
          echo "goodbye"
          exit
       fi
>>>>>>> 4e557f769518b5e2b1979844641c45986f5dff24:negpod_7-q1/main.sh
}
#view student record
view_students() {
    if [ -f $STUDENT_FILE ]; then
        cat $STUDENT_FILE
    else
        echo "No student records found."
    fi
}
#delete student record
delete_student() {
    echo "Enter student ID to delete:"
    read id
    if [ -f $STUDENT_FILE ]; then
        if grep -q ", $id" $STUDENT_FILE; then
            grep -v ", $id" $STUDENT_FILE > temp.txt && mv temp.txt $STUDENT_FILE
            echo "Student record deleted."
        else
            echo "Student ID not found."
        fi
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
    read choice
    case $choice in
        1) create_student ;;
        2) view_students ;;
        3) delete_student ;;
        4) update_student ;;
        5) exit 0 ;;
        *) echo "Invalid option." ;;
    esac
done
done
