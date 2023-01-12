#!/bin/bash

read -r -p "write the command: " userval

var2=1

cleanline=$(awk -v var="clean" 'p=index($0,var){print NR}' linuxconfiguration.txt)

cleanline2=$(($cleanline - $var2))


sed -i "$cleanline2 i $userval" linuxconfiguration.txt

echo "ready!"
