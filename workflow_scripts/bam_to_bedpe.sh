#!/bin/bash

echo 'What directory are the files located in (use absolute path)?'
read proj_path

for sample in `ls ${proj_path}/*.sam`
 do sample=`basename --suffix=.sam ${sample}`
    bedtools bamtobed -i ${proj_path}/${sample}_pos.bam -bedpe > ${proj_path}/${sample}_pos.bedpe
    bedtools bamtobed -i ${proj_path}/${sample}_neg.bam -bedpe > ${proj_path}/${sample}_neg.bedpe
done
