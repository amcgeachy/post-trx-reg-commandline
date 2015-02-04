#!/bin/bash

for sample in up down no_recomb post_recomb

do
    cut -f1-3,5-6 ${sample}_tot_sorted.bed | uniq -c > ${sample}_tot_unique.bed
done

for sample in up down no_recomb post_recomb

do
    bedtools intersect -wao -sortout -s -f 1 -a ${sample}_tot_unique.bed -b saccer3.bed > ${sample}_inside_orf_unique.bed
done

#for sample in up down no_recomb post_recomb
#
#do
#    cut -f1-3,6-19 ${sample}_inside_orf_new.bed | sort | uniq -c > ${sample}_orf_unique_new3.bed
#done
