#!/bin/bash

echo "Please enter username:"
read username

echo "Please enter password:"
read  password

#for security reasons, we will not display the password in the terminal
#so we can also use the -s option with read command to hide the password input
#read -s password

echo "The username is: $username"
echo "The password is: $password"