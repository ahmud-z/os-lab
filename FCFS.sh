read -p "Enter no of process: " noOfProcess

for (( i=0; i<noOfProcess; i++ ))
do
    read -p "Enter burst of process $i: " burstTime[i]
done


waitingTime[0]=0
totalWaitingTime=0
totalTurnAroundTime=$[burstTime[0]]
turnAroundTime[0]=${burstTime[0]}


for(( i=1; i<noOfProcess; i++ ))
do
    waitingTime[i]=${turnAroundTime[$((i-1))]}
    turnAroundTime[i]=$((${waitingTime[$i]}+${burstTime[$i]}))
done


echo "burst time: "${burstTime[@]}
echo "waiting time: "${waitingTime[@]}
echo "turn around time: "${turnAroundTime[@]}