for R1 in ` ls *_unaligned.1*`

do
sample=`echo ${R1} | cut -d'.' -f1 `
echo ${sample}

#R2=`echo ${R1} | sed s/R1/R2/`
#
#echo ${R1},${R2},${sample}
#
bowtie2 -p10 -x ~/VoBFP_with_lib/VoBFP_with_lib --un-conc ${sample}_unaligned_notVoBFP.fq -1 ${sample}.1.fq -2 ${sample}.2.fq -S ${sample}_VoBFP.sam
done

