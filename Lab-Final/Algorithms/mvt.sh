#!/bin/bash

# Read the total memory size
read -p "Enter total memory size: " memorySize

i=0
flag=1
totalMemoryUsed=0
allocatedProcesses=0

declare -a process

while [ $flag -ne 0 ]
do
    read -p "Enter memory required for process $((i + 1)): " processSize
    
    if [ $processSize -le $((memorySize - totalMemoryUsed)) ]
    then
        process[$allocatedProcesses]=$processSize
        totalMemoryUsed=$((totalMemoryUsed + processSize))
        allocatedProcesses=$((allocatedProcesses + 1))
        echo "Memory is allocated for Process $((i + 1))"
    else
        echo "Memory can't be allocated for Process $((i + 1))"
    fi
    
    read -p "Do you want to continue (Press: yes: 1 / No: 0): " flag
    i=$((i + 1))
done

echo -e "\nMemory Allocation Details:"

for (( j=0; j<$allocatedProcesses; j++ ))
do
    echo "Block $((j + 1)) size: ${process[j]}"
done

echo -e "\nTotal Allocated memory is: $totalMemoryUsed"
echo "Total External Fragmentation is: $((memorySize - totalMemoryUsed))"