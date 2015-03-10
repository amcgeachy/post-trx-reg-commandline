#!/bin/bash

echo 'What directory are the files located in (use absolute path)?'
read proj_path

echo 'What are the sample names? (should be what precedes .bed)'
read -a sample_array

for sample in ${sample_array[0]} ${sample_array[1]} ${sample_array[2]} ${sample_array[3]} ${sample_array[4]}

do
    awk '{if ($5>20) {print}}' ${proj_path}/${sample}_tot_sorted.bed > ${proj_path}/${sample}_quality.bed
    cut -f1-3,6 ${proj_path}/${sample}_quality.bed | sort | uniq -c | awk '{print $2 "\t" $3 "\t" $4 "\t" $1 "\t" "100" "\t" $5}' > ${proj_path}/${sample}_tot_unique.bed
done

for sample in ${sample_array[0]} ${sample_array[1]} ${sample_array[2]} ${sample_array[3]} ${sample_array[4]}

do
    bedtools intersect -wao -sortout -s -f 1 -a ${proj_path}/${sample}_tot_unique.bed -b /mnt/ingolialab/mcgeachy/saccer3/saccer3.bed > ${proj_path}/${sample}_inside_orf_unique.bed
done
