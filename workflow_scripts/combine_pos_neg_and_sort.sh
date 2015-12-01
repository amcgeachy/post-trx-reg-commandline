#!/bin/bash

echo 'What directory are the files located in (use absolute path)?'
read proj_path

for sample in `ls ${proj_path}/*.sam`
 do sample=`basename --suffix=.sam ${sample}`
    cat ${proj_path}/${sample}_neg.bed ${proj_path}/${sample}_pos.bed > ${proj_path}/${sample}_tot.bed
done

for sample in `ls ${proj_path}/*.sam`
 do sample=`basename --suffix=.sam ${sample}`
    sort -k1,1 -k2,2n ${proj_path}/${sample}_tot.bed > ${proj_path}/${sample}_tot_sorted.bed
done
