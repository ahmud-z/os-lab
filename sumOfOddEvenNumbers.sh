evenSum=0
oddSum=0

for i in 5 12 3 9 2 7 4
do
if [ $(($i%2)) == 0 ]
then
    evenSum=$(($evenSum + $i))
else
    oddSum=$(($oddSum + $i))
fi
done

echo "Sum of Even Numbers: $evenSum"
echo "Sum of Odd Numbers: $oddSum"