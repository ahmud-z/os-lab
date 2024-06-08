findMax(){
    max=0
    if [ $1 -gt $2 ];
    then
        max=$1
    else
        max=$2
    fi

    echo "Max is $max"
}


read -p "Enter first number: " num1
read -p "Enter second number: " num2
findMax $num1 $num2