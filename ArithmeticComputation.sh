#!/bin/bash  -x

read -p "ENTER 3 Numbers " a b c
declare -A operations
operations[sum1]=$(($a+$b*$c))
operations[sum2]=$(($a*$b+$c))
operations[sum3]=$(($c+$a/$b))
operations[sum4]=$(($a%$b+$c))
