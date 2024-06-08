read -p "Enter a number: " num

maxDigit=0

while [ $num -ne 0 ]
do
    digit=$((num % 10))
    if [ $digit -gt $maxDigit ]
    then
        maxDigit=$digit
    fi
    num=$((num / 10))
done

echo "Max digit of the given number is: $maxDigit"