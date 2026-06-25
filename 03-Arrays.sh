#!/bin/bash

#Array is a data structure that allows you to store and manipulate a collection of elements.  
#Array is 0-based index

#Arrays declaration
#1. Using parentheses
fruits=("Apple" "Banana" "Cherry" "Date")

#2. Using declare command
declare -a vegetables=("Carrot" "Broccoli" "Spinach" "Potato")   

#Accessing array elements
echo "First fruit: ${fruits[0]}"
echo "Second vegetable: ${vegetables[1]}"

#Length of an array
echo "Number of fruits and vegetables: ${#fruits[@]} and ${vegetables[[@]]}"

#Iterating over an array
echo "Fruits:"
for fruit in "${fruits[@]}"; do
    echo "- $fruit"
done

#Iterating over an array using index
echo "Vegetables:"
for (( i=0; i<${#vegetables[@]}; i++ ));    do
    echo "- ${vegetables[i]}"
done    

#Adding elements to an array
fruits+=("Elderberry" "Fig")
echo "Updated fruits: ${fruits[@]}"

#Removing elements from an array
unset fruits[1]  # Removes "Banana"
echo "Fruits after removal: ${fruits[@]}"
