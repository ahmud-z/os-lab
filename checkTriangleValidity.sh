read -p "Enter first input: " a
read -p "Enter second input: " b
read -p "Enter third input: " c

if (( ($a + b) > $c )) && (( ($a + $c) > $b )) && (( ($b + $c) > $a ))
then
   echo "Valid Triangle"
else
   echo "Not Valid Triangle"
fi