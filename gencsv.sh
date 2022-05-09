#!/bin/bash

RANDOM=$$
num=0
ARG1=${1:-10}
while [[ ${num} -le ${ARG1} ]]
do
echo $num $RANDOM
(( num = num + 1 ))
done
