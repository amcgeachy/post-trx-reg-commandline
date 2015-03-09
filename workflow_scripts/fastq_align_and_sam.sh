#!/bin/bash

input1=$1
input2=$2
output=$3

echo 'input1 is' ${input1}
echo 'input2 is' ${input2}
echo 'output is' ${output}

bowtie2 -p10 -x ~/saccer3/chr/saccer3 -1 ${input1} -2 ${input2} -S ${output}.sam
