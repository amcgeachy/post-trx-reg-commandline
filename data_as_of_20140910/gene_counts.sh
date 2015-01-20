#!/bin/bash

for sample in up down no_recomb post_recomb

do
    cut -f2,3,6,10 ${sample}_inside_orf.bed | uniq -c | sort -k5 -r > ${sample}_frag_counts.txt
    cut -f4 ${sample}_frag_counts.txt | uniq -c | sort -k2 -r > ${sample}_gene_counts.txt
done
