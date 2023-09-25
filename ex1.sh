#!/bin/bash
# Read the user input
echo "Enter first number"
read first_number
echo "Enter second number"
read second_number
echo "Sum"
let "sum = $first_number + $second_number"
echo  "$first_number + $second_number =" $sum
