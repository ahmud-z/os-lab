# !/bin/bash
arr=(1 12 31 4 5)
i=0
while [ $i −lt ${#arr[@]} ]
do
    echo ${arr[$i]}
    i=‘expr $i + 1‘
done


# !/bin/bash
arr=(1 2 3 4 5)

for i in "${arr[@]}"
do
    # access each element
    # as $i
    echo $i
done