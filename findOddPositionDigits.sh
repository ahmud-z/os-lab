read -p "Enter a number: " number
len=${#number}

for (( i=0; i<$len; i+=2 ))
do
    digit=${number:$i:1}
    
    echo $digit
done