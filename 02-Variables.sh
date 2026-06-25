#!/bin/bash

# Declaring variables
Name="Achyuth"
Age=22
City="Mumbai"

#Referencing variables
echo "My name is $Name"
echo  "My age is $Age"
echo "I live in $City😍"

#Arithmetic operations
#input from command line
num1=$1
num2=$2

Sum=$((num1 + num2))
echo "The sum of $num1 and $num2 is: $Sum"

#Todays date
Today=$(date +"%A, %B %d, %Y")
echo "Today's date is: $Today"  