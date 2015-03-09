#!/bin/bash

for sample in up down no_recomb post_recomb

do
    bedtools intersect -a ${sample}_tot_sorted.bed -b saccer3.bed -wao -s > ${sample}_intersect.bed
done

for sample in up down no_recomb post_recomb

do 
    cut -f1-3,6-19 ${sample}_intersect.bed | uniq -c > ${sample}_intersected_unique.bed
done
