read -p "Enter the number of blocks: " noOfBlocks
read -p "Enter the number of files: " noOfFiles

for (( i=0; i<noOfBlocks; i++ )); do
    read -p "Enter the size of block $i: " blocks[$i]
    isAllocatedflag[$i]=0
done

for (( i=0; i<noOfFiles; i++ )); do
    read -p "Enter the size of file $i: " files[$i]
done

for (( i=0; i<noOfFiles; i++ )); do
    highest=-1
    for (( j=0; j<noOfBlocks; j++ )); do
        if [[ ${isAllocatedflag[$j]} -eq 0 && ${blocks[$j]} -ge
            ${files[$i]} ]]; then
            
            if [[ $highest -eq -1 || ${blocks[$j]} -lt
                    
                ${blocks[${alloc[$i]}]} ]]; then
                highest=$j
            fi
        fi
        
    done
    if [[ $highest -ne -1 ]]; then
        alloc[$i]=$highest
        isAllocatedflag[$highest]=1
        fragment[$i]=$((blocks[$highest] - files[$i]))
    else
        alloc[$i]=-1
        fragment[$i]=-1
    fi
done

echo "Blocks: ${blocks[@]}"
echo "Files: ${files[@]}"
echo "Allocation: ${alloc[@]}"
echo "Fragmentation: ${fragment[@]}"