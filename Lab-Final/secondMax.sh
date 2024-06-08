read -p "Enter a number: " num

maxDigit=-1
secondMaxDigit=-1

while [ $num -ne 0 ]
do
    digit=$((num % 10))
    
    if [ $digit -gt $maxDigit ]
    then
        secondMaxDigit=$maxDigit
        maxDigit=$digit
    elif [ $digit -gt $secondMaxDigit ] && [ $digit -ne $maxDigit ]
    then
        secondMaxDigit=$digit
    fi
    
    num=$((num / 10))
done

if [ $secondMaxDigit -eq -1 ]
then
    echo "There is no second maximum digit."
else
    echo "Second max digit of given number: $secondMaxDigit"
fi