for R1 in ` ls *_R1_*`

do
sample=`echo ${R1} | cut -d_ -f1 | sed s/NIAM005// `
echo ${sample}

R2=`echo ${R1} | sed s/R1/R2/`

echo ${R1},${R2},${sample}

bowtie2 -p10 -x ~/saccer_w_VoBFP --un-conc ${sample}_unaligned.fq -1 ${R1} -2 ${R2} -S ${sample}.sam
done

