#!/bin/bash

echo 'What directory are the files located in (use absolute path)?'
read proj_path

echo 'What are the sample names? (should be what precedes .bam)'
read -a sample_array

for sample in ${sample_array[0]} ${sample_array[1]} ${sample_array[2]} ${sample_array[3]} ${sample_array[4]}
do
        samtools merge -u - ${proj_path}/${sample}_99.bam ${proj_path}/${sample}_147.bam | samtools sort -n - ${proj_path}/${sample}_pos &
	samtools merge -u - ${proj_path}/${sample}_83.bam ${proj_path}/${sample}_163.bam | samtools sort -n - ${proj_path}/${sample}_neg &
done
