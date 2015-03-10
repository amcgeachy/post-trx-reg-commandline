#!/bin/bash

echo 'What directory are the files located in (use absolute path)?'
read proj_path

echo 'What are the sample names? (should be what precedes .bed)'
read -a sample_array

for sample in ${sample_array[0]} ${sample_array[1]} ${sample_array[2]} ${sample_array[3]} ${sample_array[4]}
do
    cat ${proj_path}/${sample}_neg.bed ${proj_path}/${sample}_pos.bed > ${proj_path}/${sample}_tot.bed
done

for sample in ${sample_array[0]} ${sample_array[1]} ${sample_array[2]} ${sample_array[3]} ${sample_array[4]}
do
    sort -k1,1 -k2,2n ${proj_path}/${sample}_tot.bed > ${proj_path}/${sample}_tot_sorted.bed
done
