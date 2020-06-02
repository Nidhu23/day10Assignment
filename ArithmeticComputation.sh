#!/bin/bash  -x
#$c+$a/$b
read -p "ENTER 3 Numbers " a b c
declare -A operations
cnt=0
operations[sum1]=$(($a+$b*$c))
operations[sum2]=$(($a*$b+$c))
operations[sum3]=`echo "scale=2;$c+$a/$b;" | bc `
operations[sum4]=$(($a%$b+$c))
for i in ${!operations[@]}
do
        a[((cnt++))]=${operations[$i]}
done
echo ${operations[@]}
c=$(printf "%f\n" ${a[@]} | sort -r -g )
echo "Values sorted in descending order " ${c[@]}
b=$(printf "%f\n"  ${a[@]} | sort -n )
echo "Values sorted in ascending order " ${b[@]}
