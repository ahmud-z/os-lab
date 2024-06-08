read -p "Enter a number: " number

evenSum=0
oddSum=0

while [ $number -ne 0 ]
do
    digit=$((number % 10))
    if [ $((digit % 2)) -eq 0 ]
    then
        evenSum=$((evenSum + digit))
    else
        oddSum=$((oddSum + digit))
    fi
    number=$((number / 10))
done

echo "Sum of even digits: $evenSum"
echo "Sum of odd digits: $oddSum"