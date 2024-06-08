read -p "Enter first number: " num1
read -p "Enter second number: " num2
read -p "Enter third number: " num3

if [ $num1 -ge $num2 ] && [ $num1 -ge $num3 ]; then
    max=$num1
    elif [ $num2 -ge $num1 ] && [ $num2 -ge $num3 ]; then
    max=$num2
    elif [ $num3 -ge $num1 ] && [ $num3 -ge $num2 ]; then
    max=$num3
fi

echo -e "\nMax is $max" 