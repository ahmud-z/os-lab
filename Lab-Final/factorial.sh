findFactorial(){
    fact=1
    
    for(( i=1; i<=$1; i++ ))
    do
        fact=$((fact*i))
    done
    
    echo "factorial of $1 is: $fact"
}

main(){
    read -p "Enter a number: " num
    findFactorial $num
}

main
