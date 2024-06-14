Negpod 7 SUMMATIVE
This is a summative done by Negpod 7 and It covers shell programming and automation in Linux. The application registers student records into the ALU registration system. To use this application
---
name: "student record Necpod 7"
about: Creating a student record 
labels:student record 

---


## How the student record is supposed to look like.
This is a bash script that manages student record, views, update student information and stores the record in “students-list_1023.txt” file in the format of email, age and id. There is a main loop that displays a menu with options and prompts the user to choose an option.


### Steps to input the given options and expected behaviour
The first function option (create student) prompts the user to enter a student email, age and id. Note that it ensures the age entered is a valid number. The second function option (view student) checks if the “student file” exists if it does it displays its content but if it does not exist, informs the user that no student record are found. The third function option (delete student) prompts the user to enter the student id to delete. If the id input exists, the record gets deleted but if the id input does not exist then it informs the user. The last function option (updating student record) prompts the user to enter the student id to update. If the id is found then it deletes the old record and prompts the user to enter a new email and age for the student. If the id is not found it informs the user.
### Environment
Bash (Bourne Again Shell)
