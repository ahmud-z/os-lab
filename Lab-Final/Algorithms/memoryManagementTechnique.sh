read -p "Enter the number of block: " noOfBlock

for(( i=0; i<noOfBlock; i++ )) do
    read -p "Enter Block $((i+1)) size: " blocks[$i]
done

read -p "Enter number of process: " noOfProcess

for (( i=0; i<noOfProcess; i++ )) do
    read -p "Enter require memory for process $((i+1)): " processes[$i]
done

echo -e "\n"
echo -e "Process\tP-Size\tBlocks\tB-Size\tAllocated\tInt. Frag"

for (( i=0; i<noOfBlock; i++ )); do
    if [ ${processes[$i]} -le ${blocks[$i]} ]; then
        echo -e "  $((i+1))\t ${processes[$i]}\t $((i+1))\t ${blocks[$i]}\t  YES\t\t  $(( ${blocks[$i]} - ${processes[$i]} ))"
    else
        echo -e "  $((i+1))\t ${processes[$i]}\t $((i+1))\t ${blocks[$i]}\t  NO\t\t  ---"
    fi
done

