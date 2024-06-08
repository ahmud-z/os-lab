read -p "Enter a number: " num

sumOfDigit=0

while [ $num -ne 0 ]
do
    sumOfDigit=$((sumOfDigit + num % 10))
    num=$((num / 10))
done

echo "Sum of Digit is: $sumOfDigit"
