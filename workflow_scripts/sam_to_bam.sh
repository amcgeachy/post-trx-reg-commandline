#!/bin/bash

echo 'What directory are the files located in (use absolute path)?'
read proj_path

#write the list of names to a text file that we can call up repeatedly
echo 'In this folder, there are the following .sam files. Making a file of their names....'

for names in `ls ${proj_path}/*.sam`
 do names=`basename --suffix=.sam ${names}`
 echo ${names}
# names_list=`echo -e "${names_list} \n ${names}"`
 samtools view -Sb ${proj_path}/${names}.sam -o ${proj_path}/${names}.bam
done 

#`echo $names_list > ${proj_path}/names.txt`

#for sample in
#do
#    samtools view -Sb ${sample}.sam -o ${sample}.bam
#done 
