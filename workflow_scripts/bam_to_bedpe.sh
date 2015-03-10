#!/bin/bash

echo 'What directory are the files located in (use absolute path)?'
read proj_path

echo 'What are the sample names? (should be what precedes .bam)'
read -a sample_array

for sample in ${sample_array[0]} ${sample_array[1]} ${sample_array[2]} ${sample_array[3]} ${sample_array[4]}
do
    bedtools bamtobed -i ${proj_path}/${sample}_pos.bam -bedpe > ${proj_path}/${sample}_pos.bedpe
    bedtools bamtobed -i ${proj_path}/${sample}_neg.bam -bedpe > ${proj_path}/${sample}_neg.bedpe
done
