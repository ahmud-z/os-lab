read -p "Enter number of pages: " numberOfPages
read -p "Enter number of frames: " numberOfFrames
echo "Enter the pages:"

for (( i=0; i<numberOfPages; i++ )) do
    read pages[$i]
done

for (( i=0; i<numberOfFrames; i++ )) do
    memory[$i]=-1
done

pageFaultCount=0
memoryIndex=0

echo "The Page Replacement Process is -->"
for (( i=0; i<numberOfPages; i++ )) do
    for (( j=0; j<numberOfFrames; j++ )) do
        if [[ ${memory[$j]} -eq ${pages[$i]} ]]; then
            break
        fi
    done
    if [[ $j -eq $numberOfFrames ]]
    then
        memory[$memoryIndex]=${pages[$i]}
        ((memoryIndex++))
        ((pageFaultCount++))
    fi
    for (( k=0; k<numberOfFrames; k++ )) do
        echo -e "\t${memory[$k]}"
    done
    
    if [[ $j -eq $numberOfFrames ]]
    then
        echo -e "\tPage Fault No: $pageFaultCount"
    fi
    if [[ $memoryIndex -eq $numberOfFrames ]]
    then
        memoryIndex=0
    fi
done
echo "Total no of page faults using FIFO is: $pageFaultCount"