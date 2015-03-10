#!/bin/bash

echo 'What directory are the files located in (use absolute path)?'
read proj_path

echo 'What are the sample names? (should be what precedes .bedpe)'
read -a sample_array

for sample in ${sample_array[0]} ${sample_array[1]} ${sample_array[2]} ${sample_array[3]} ${sample_array[4]}
do
    cut -f 1,2,6,7,8 ${proj_path}/${sample}_neg.bedpe > ${proj_path}/${sample}_neg.bed
    sed 's/$/\t-/' -i ${proj_path}/${sample}_neg.bed
done

for sample in ${sample_array[0]} ${sample_array[1]} ${sample_array[2]} ${sample_array[3]} ${sample_array[4]}
do
    cut -f 1,2,6,7,8 ${proj_path}/${sample}_pos.bedpe > ${proj_path}/${sample}_pos.bed
    sed 's/$/\t+/' -i ${proj_path}/${sample}_pos.bed
done
