#!/bin/bash


echo 'What directory are the files located in (use absolute path)?' 
read proj_path

#echo 'What are the sample names? (should be what precedes .bam)'
#read -a sample_array

for names in `ls ${proj_path}/*.sam`
 do names=`basename --suffix=.sam ${names}`
 echo ${names}
    for flag in 99 147 83 163
    do
    samtools view -u -f ${flag} ${proj_path}/${names}.bam > ${proj_path}/${names}_${flag}.bam &
    done
done

