#!/bin/bash

findFactorial() {
    num=$1
    fact=1

    for ((i = 1; i <= num; i++)); do
        fact=$((fact * i))
    done
    echo $fact
}

calculate_sum() {
    num1=$1
    num2=$2
    sum=$((num1 + num2))
    echo $sum
}

echo "Enter two numbers:"
read -r num1
read -r num2

fact1=$(findFactorial "$num1")
echo "Factorial of $num1: $fact1"

fact2=$(findFactorial "$num2")
echo "Factorial of $num2: $fact2"

sum=$(calculate_sum "$fact1" "$fact2")
echo "Sum of $fact1 and $fact2: $sum"
