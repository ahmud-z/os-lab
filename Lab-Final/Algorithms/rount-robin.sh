read -p "Enter no of process: " noOfprocess
read -p "Enter time quantum value: "

for (( i=0; i<noOfProcess; i++ ))
do
    echo "Enter  p$(( $i+1 )) process size: " processes[i]
done

