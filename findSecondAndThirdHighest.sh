
findhighest() {
    sortedNumbers=($(echo "$@" | tr ' ' '\n' | sort -nr))
    secondHighest=${sorted_numbers[1]}
    thirdHighest=${sorted_numbers[2]}
    sum=$((secondHighest + thirdHighest))

    echo "Second Highest Number: $second_highest"
    echo "Third Highest Number: $third_highest"
    echo "Sum Result: $sum"
}
echo "Enter array input:"
read -r numbers
findHighest $numbers

