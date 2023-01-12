#!/bin/bash

figlet "! ! ! Reminder ! ! !" -c
figlet "This text will appear only one time" -c

path=$(pwd)

echo -e "If you want to see it again go to $path/important.txt in order to see what you need to install more or what you need to do later on \n "

#print important.txt
cat important.txt


#acknowlegement
read -p "Type 'yes' if you aknowlege tha" message


