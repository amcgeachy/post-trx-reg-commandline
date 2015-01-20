#!/bin/bash

for sample in up down no_recomb post_recomb

do
    bedtools intersect -a ${sample}_tot_sorted.bed -b saccer3.bed -wao -s -f 1 > ${sample}_inside_orf.bed
done

for sample in up down no_recomb post_recomb

do
    cut -f1-3,6-19 ${sample}_inside_orf.bed | uniq -c > ${sample}_orf_unique.bed
done
