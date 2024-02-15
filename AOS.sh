#!/bin/bash
counter="0"
while [ $counter -lt 100 ]
do
gcc project.c -o proj
./proj
read option1
#Code for listing all files and directories
if [ $option1 == 1 ]     
then
	echo " List all files and directories here.."
	echo "Displaying all files and directories..."
	sleep 3
	echo "Loading...Please wait.."
	sleep 3
	echo "----------------------Output-------------------------------------------"
	ls
	echo " "

#Code for creating files
elif [ $option1 == 2 ]
then
	echo "Create your New Files here..."
	echo "Select the file type you want to create !"
	echo "1- .c"
	echo "2- .sh"
	echo "3- .txt"
	echo "Enter your choice by typing a number from 1-3"
read filechoice

if [ $filechoice ==1 ] 
then
echo " Enter Your New File Name without .c Extension"
read filename
touch $filename.c
echo "--------------------------------------Output---------------------------"
echo "Successfully Created New File"
echo " "

elif [ $filechoice == 2 ]
then
echo "Enter Your New File Name without .sh Extension"
read filename2
touch $filename2.sh
echo "-------------------------------OutPut-------------------------
-----------"
echo "Successfully Created New File"
echo " "

elif [ $filechoice == 3 ]
then

echo "Enter Your New File Name without .txt Extension"
read filename3
touch $filename3.txt
echo "-------------------------------OutPut-------------------------
-----------"
echo "Successfully Created New File"
echo " "
else
echo "Inavlid Input. Please Try Again."
echo " "
fi

#Code for Deleting file
elif [ $option1 == 3 ]
then
echo "Delete existing files... "
echo "Please Enter name of the File you wish to Delete!"
echo "Note: Please Enter full Filename with Extension."
read delfile
echo "-------------------------------OutPut-------------------------
-----------"

if [ -f "$delfile" ];
then
rm $delfile
echo "Successfully Deleted."
echo " "
  else                                                                                                                                                                    
echo "The File Does not Exist...Try again"                                                                                                                           
echo " "                                                                                                                                                
fi 
 
 #Code for Renaming of a file
elif [ $option1 == 4 ] 
then 
        echo "-------------------------------OutPut-------------------------
-----------" 
        echo "Rename files here..." 
        echo "Please Enter Current Name of File with Extension..." 
        read old 
        echo "Checking for the file..." 
        sleep 3 
 
        if [ -f "$old" ]; 
        then 
                echo "Ok File Exist." 
                echo "Enter New Name for the file with Extension" 
                read new 
                mv $old $new 
                echo " Rename Successfully." 
                echo "Now Your File Exist with $new Name" 
        else 
                echo "$old does not exist...Please Try again with correct file name." 
        fi 
 
echo " " 
 
#Code for entering updating file content
elif [ $option1 == 5 ] 
then 
        echo "Edit file content here..." 
        echo "Please Enter the Name of the File with its Extension : " 
        read edit 
        echo "-------------------------------OutPut-------------------------
-----------" 
        echo "Checking for the file.." 
        sleep 3 
 
        if [ -f "$edit" ]; 
        then 
                echo "Opening the file..." 
                sleep 3 
                nano $edit 
                echo " " 
        else 
                echo "$edit File does not exist...Try again." 
                echo " "
        fi 
              
#Code for searching    files                                                                                                                                                                                     
elif [ $option1 == 6 ] 
then                                                                                                                                                                    
echo "Search files here..."                                                                                                                                      
echo "Please Enter the File Name with its Extension to search"                                                                                                                 
read f 
 
        echo "-------------------------------OutPut-------------------------
-----------" 
        if [ -f "$f" ]; 
        then 
                echo "Searching for $f File" 
                echo "File Found." 
                find /home -name $f 
                echo " " 
        else 
                echo "File Does not Exist... Please Try again." 
                echo " " 
        fi 
 
 #Code for getting details of any file
elif [ $option1 == 7 ] 
then 
        echo "Detail of file here..." 
        echo "Please Enter the File Name with its xtension to see Detail : " 
        read detail 
        echo "-------------------------------OutPut-------------------------
-----------" 
        echo "Checking for the file..." 
        sleep 4 
 
        if [ -f "$detail" ]; 
        then 
                echo "Loading its Properties...Please Wait..." 
                stat $detail 
 
        else 
                echo "$detail File does not exist... Please Try again" 
        fi 
echo " " 
 
#Code for reading content of any file
elif [ $option1 == 8 ] 
then 
        echo "View content of the file here..." 
        echo "Please Enter File Name : " 
        read readfile 
        echo "-------------------------------OutPut-------------------------
-----------" 
        if [ -f "$readfile" ]; 
        then                                                                                                                                                                    
echo "Showing file content..." 
                sleep 3 
                cat $readfile                                                                                                                                           
else 
                echo "$readfile does not exist"                                                                                                                         
fi                                                                                                                                                      
echo " "                                                                                                                                                         
 
#Code for sorting contents of file
elif [ $option1 == 9 ] 
then 
        echo "Sort files content here.." 
        echo "Please Enter the File Name with Extension to sort :" 
        read sortfile 
        echo "-------------------------------OutPut-------------------------
-----------" 
        if [ -f "$sortfile" ]; 
        then 
                echo "Sorting File Content.." 
                sleep 3 
                sort $sortfile 
 
        else 
                echo "$sortfile File does not exist...Please Try again." 
        fi 
echo " " 
 
#Code for listing all directories 
elif [ $option1 == 10 ] 
then 
        echo "-------------------------------OutPut-------------------------
-----------" 
        echo "List of all Directories here.." 
        echo "showing all Directories..." 
        echo "Loading..." 
        sleep 3 
        ls -d */ 
        echo " " 
 
#Code for listing files
elif [ $option1 == 11 ] 
then 
 
        echo "List of Files with Particular extensions here..." 
        echo "Which type of file list you want to see?" 
        echo "1- .c" 
        echo "2- .sh" 
        echo "3- .txt" 
        echo "Enter your choice from 1-3" 
        read extoption 
 
        echo "-------------------------------OutPut-------------------------
-----------"                                                                                
if [ $extoption == 1 ] 
        then 
        echo "List of .c Files shown below."                                                                                                                            
echo "Loading.." 
        sleep 3                                                                                                                                                         
ls *.c                                                                                                                                                                                                                                                                                                                          
elif [ $extoption == 2 ] 
        then 
        echo "List of .sh Files shown below." 
        echo "Loading..." 
        sleep 3 
        ls *.sh 
 
        elif [ $extoption == 3 ] 
        then 
        echo "List of .txt Files shown below." 
        echo "Loading..." 
        sleep 3 
        ls *.txt 
 
        else 
        echo "Invalid Input... Please Try again..."                                                                                                                               
fi 
echo " " 
 
#Count of total number of directories
elif [ $option1 == 12 ] 
then 
        echo "-------------------------------OutPut-------------------------
-----------" 
        echo "Total number of Directories here.." 
        echo "Loading all the directories..." 
        sleep 3 
        echo "Counting..." 
        sleep 3 
        echo "Number of Directories are : " 
        echo */ | wc -w 
echo " " 
 
 #Count of total number of files in current directory
elif [ $option1 == 13 ] 
then 
        echo "-------------------------------OutPut-------------------------
-----------" 
        echo "Total Numbers of Files in Current Directory here..." 
        echo "Loading all files..." 
        sleep 3 
        echo "Number of Files are : " 
        ls -l | grep -v 'total' | grep -v '^d' | wc -l 
echo " "    

#Code for sorting files                                                                                                                                                     
elif [ $option1 == 14 ] 
then                                                                                                                                                                    
echo "-------------------------------OutPut---------------------------------
---" 
        echo "Sort Files here..."                                                                                                                                        
echo "Your Request of Sorting file is Generated."                                                                                                               
echo "Sorting..."                                                                                                                                                
sleep 3 
        ls | sort 
echo " " 
 
 #Code for exit
elif [ $option1 == 0 ] 
then 
        echo "Good Bye..." 
        echo " Exiting Successfully" 
        break 
else 

echo "Invalid Input...Please Try again..." 

 fi 

 counter=$[$counter+1] 


done
