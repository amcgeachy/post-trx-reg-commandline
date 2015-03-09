#!/bin/bash

for sample in up down no_recomb post_recomb
do
    cut -f 1,2,6,7,8 ${sample}_neg.bedpe > ${sample}_neg.bed
    sed 's/$/\t-/' -i ${sample}_neg.bed
done

for sample in up down no_recomb post_recomb
do
    cut -f 1,2,6,7,8 ${sample}_pos.bedpe > ${sample}_pos.bed
    sed 's/$/\t+/' -i ${sample}_pos.bed
done
