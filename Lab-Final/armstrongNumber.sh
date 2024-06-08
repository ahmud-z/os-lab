read -p "Enter a number: " num

temp=$num
sumOfDigitCubes=0

while [ $num -ne 0 ]
do
    digit=$((num % 10))
    sumOfDigitCubes=$((sumOfDigitCubes + digit * digit * digit))
    num=$((num / 10))
done

if [ $sumOfDigitCubes -eq $temp ]
then
    echo "Armstrong number"
else
    echo "Not Armstrong number"
fi
