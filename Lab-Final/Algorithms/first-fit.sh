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
    for (( j=0; j<noOfBlocks; j++ )); do
        if (( files[$i] <= blocks[$j] && isAllocatedflag[$j] == 0 ));
        then
            
            alloc[$i]=$j
            fragment[$i]=$((blocks[$j]-files[$i]))
            isAllocatedflag[$j]=1
            break
        fi
    done
done
echo "Blocks: ${blocks[@]}"
echo "Files: ${files[@]}"
echo "Allocation: ${alloc[@]}"
echo "Fragmentation: ${fragment[@]}"