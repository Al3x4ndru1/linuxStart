#!/bin/bash

figlet "! ! ! Reminder ! ! !" -c
figlet "This text will appear only one time" -c

path=$(pwd)

echo -e "If you want to see it again go to $path/important.txt in order to see what you need to install more or what you need to do later on \n "

echo -e "Or you can see it on the Desktop because a file will be created called ShouldBeInstall \n "

#print important.txt
cat important.txt

#create a file on desktop called ShouldBeInstall that contains all the softwares that should be installed manually
cat important.txt > ~/Desktop/ShouldBeInstall

#acknowlegement
read -p "Type 'yes' if you aknowlege tha" message


