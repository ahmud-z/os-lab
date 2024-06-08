#!/bin/bash

read -p "Enter the number of blocks: " noOfBlocks

for (( i=0; i<noOfBlocks; i++ )); do
    read -p "Enter the size of block $((i+1)): " blocks[$i]
    isAllocatedflag[$i]=0
done

read -p "Enter the number of files: " noOfFiles

for (( i=0; i<noOfFiles; i++ )); do
    read -p "Enter the size of file $((i+1)): " files[$i]
done

for (( i=0; i<noOfFiles; i++ )); do
    worstIdx=-1
    for (( j=0; j<noOfBlocks; j++ )); do
        if (( files[$i] <= blocks[$j] && isAllocatedflag[$j] == 0 )); then
            if (( worstIdx == -1 || blocks[$j] > blocks[$worstIdx] )); then
                worstIdx=$j
            fi
        fi
    done
    
    if (( worstIdx != -1 )); then
        alloc[$i]=$worstIdx
        fragment[$i]=$((blocks[$worstIdx] - files[$i]))
        isAllocatedflag[$worstIdx]=1
    else
        alloc[$i]=-1
        fragment[$i]=0
    fi
done

echo "Blocks: ${blocks[@]}"
echo "Files: ${files[@]}"
echo "Allocation: ${alloc[@]}"
echo "Fragmentation: ${fragment[@]}"