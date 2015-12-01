#!/bin/bash

echo 'What directory are the files located in (use absolute path)?'
read proj_path

echo
echo ${proj_path}

for names in `ls ${proj_path}/*.sam`
 do names=`basename --suffix=.sam ${names}`
 echo ${names}
 counts=`wc -l ${proj_path}/${names}.sam | cut -d' ' -f1`" reads"
 echo "${counts}"
done
