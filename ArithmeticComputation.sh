#!/bin/bash  -x

read -p "ENTER 3 Numbers " a b c
declare -A operations
cnt=0
operations[sum1]=$(($a+$b*$c))
operations[sum2]=$(($a*$b+$c))
operations[sum3]=$(($c+$a/$b))
operations[sum4]=$(($a%$b+$c))
for i in ${!operations[@]}
do
        a[((cnt++))]=${operations[$i]}
done
echo ${operations[@]}
c=$(printf "%d\n" ${a[@]} | sort -r -g )
echo "Values sorted in descending order " ${c[@]}
b=$(printf "%d\n"  ${a[@]} | sort -n )
echo "Values sorted in ascending order " ${b[@]}
