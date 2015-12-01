#!/bin/bash

echo 'What directory are the files located in (use absolute path)?'
read proj_path

for sample in `ls ${proj_path}/*.sam`
 do sample=`basename --suffix=.sam ${sample}`
    cut -f 1,2,6,7,8 ${proj_path}/${sample}_neg.bedpe > ${proj_path}/${sample}_neg.bed
    sed 's/$/\t-/' -i ${proj_path}/${sample}_neg.bed
done

for sample in `ls ${proj_path}/*.sam`
 do sample=`basename --suffix=.sam ${sample}`
    cut -f 1,2,6,7,8 ${proj_path}/${sample}_pos.bedpe > ${proj_path}/${sample}_pos.bed
    sed 's/$/\t+/' -i ${proj_path}/${sample}_pos.bed
done
