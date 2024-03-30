

find_digit_frequency() {
    number=$1
    length=${#number}
    index=0

    declare -A digit_frequency

    while [ $index -lt $length ]
    do
        digit=${number:index:1}
        
        ((digit_frequency[$digit]++))
        
        ((index++))
    done

    echo "Digit Frequency:"
    for digit in "${!digit_frequency[@]}"
    do
        echo "Digit $digit : ${digit_frequency[$digit]}"
    done
}

echo "Enter a number:"
read input_number
find_digit_frequency "$input_number"

