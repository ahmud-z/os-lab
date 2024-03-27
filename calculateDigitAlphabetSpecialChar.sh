
count_chars() {
    string="$1"
    alphabet_count=$(echo "$string" | tr -cd '[:alpha:]' | wc -c)
    digit_count=$(echo "$string" | tr -cd '[:digit:]' | wc -c)
    special_count=$(echo "$string" | tr -cd '[:punct:]' | wc -c)
    
    echo "Alphabets: $alphabet_count"
    echo "Digits: $digit_count"
    echo "Special characters: $special_count"
}

echo "Enter a string:"
read input_string
count_chars "$input_string"

