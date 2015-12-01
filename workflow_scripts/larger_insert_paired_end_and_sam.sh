#!/bin/bash

echo 'What directory are the files located in (use absolute path)?'
read proj_path

echo 
echo ${proj_path}

echo 'Where do you want the completed files to go? (use absolute path)'
read dest_path
if [ -d ${dest_path} ]; then
 echo ${dest_path}
 else 
  mkdir ${dest_path}
 echo ${dest_path}
fi
echo

for names in `ls ${proj_path}/`

 do echo ${names}
 samples=`echo ${names} | cut -d_ -f3`
 echo "Current sample: ${samples}"

R1_list=''
R2_list=''

 for R1 in `ls ${proj_path}/${names}/*_R1_*`
  do echo ``
  R1_list="${R1_list},${R1}"

  R2=`echo ${R1} | sed s/R1/R2/`
  R2_list="${R2_list},${R2}"

 done
 R1_list=`echo ${R1_list} | sed -E 's/,//'`
 R2_list=`echo ${R2_list} | sed -E 's/,//'`
 echo "I am trying to do that thing."
 echo ""
 bowtie2 -p38 --maxins 1000 -x ~/saccer_w_VoBFP/saccer_w_VoBFP --un-conc ${dest_path}/${samples}_unaligned.fq -1 ${R1_list} -2 ${R2_list} -S ${dest_path}/${samples}.sam
done

