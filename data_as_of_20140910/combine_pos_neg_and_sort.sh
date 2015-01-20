#!/bin/bash

for sample in up down no_recomb post_recomb
do
    cat ${sample}_neg.bed ${sample}_pos.bed > ${sample}_tot.bed
done

for sample in up down no_recomb post_recomb 
do
    sort -k1,1 -k2,2n ${sample}_tot.bed > ${sample}_tot_sorted.bed
done
