#!/bin/bash

echo 'What directory are the files located in (use absolute path)?'
read proj_path

for names in `ls ${proj_path}/*.sam`
 do names=`basename --suffix=.sam ${names}`
 echo ${names}
        samtools merge -u - ${proj_path}/${names}_99.bam ${proj_path}/${names}_147.bam | samtools sort -n - ${proj_path}/${names}_pos &
	samtools merge -u - ${proj_path}/${names}_83.bam ${proj_path}/${names}_163.bam | samtools sort -n - ${proj_path}/${names}_neg &
done
