
#!/bin/bash

read -p "Enter the number of processes: " numOfProcess

for(( i=0; i<numOfProcess; i++ )) do
read -p "Enter the burst of p$((i+1)): " burstTime[$i]
read -p "Enter the priority of p$((i+1)): " priority[$i]
process[$i]=$((i+1))
done

for(( i=0; i<numOfProcess; i++ )) do
for(( j=$((i+1)); j<numOfProcess; j++ )) do

if [ ${priority[$i]} -gt ${priority[$j]} ]
then
temp=${burstTime[$i]}
burstTime[$i]=${burstTime[$j]}
burstTime[$j]=$temp

temp=${process[$i]}
process[$i]=${process[$j]}
process[$j]=$temp

temp=${priority[$i]}
priority[$i]=${priority[$j]}
priority[$j]=$temp

elif [ ${priority[$i]} == ${priority[$j]} ] && [ ${burstTime[$i]} -gt ${burstTime[$j]} ]
then
temp=${burstTime[$i]}
burstTime[$i]=${burstTime[$j]}
burstTime[$j]=$temp

temp=${process[$i]}
process[$i]=${process[$j]}
process[$j]=$temp

temp=${priority[$i]}
priority[$i]=${priority[$j]}
priority[$j]=$temp
fi
done
done

echo "sorted burst time: " ${burstTime[@]}
echo "sorted process id: " ${process[@]}

waitingTime[0]=0
tat[0]=${burstTime[0]}

avwt=0
avtat=${bt[0]}

for(( i=1; i<numOfProcess; i++ ))
do
waitingTime[$i]=${tat[$((i-1))]}
tat[$i]=$((${waitingTime[$i]}+${burstTime[$i]}))

((avwt+=${waitingTime[$i]}))
((avtat+=${tat[$i]}))

done

avwt=`echo "scale=2; $avwt / $numOfProcess" | bc`
avtat=`echo "scale=2; $avtat / $numOfProcess" | bc`

echo "waiting time:" ${waitingTime[@]}
echo "turnaround time:" ${tat[@]}
echo "average waiting time:" $avwt
echo "average turnaround time:" $avtat
