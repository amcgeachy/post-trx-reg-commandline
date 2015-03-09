for R1 in ` ls *unaligned_unaligned_notVoBFP_unaligned_notVoBFP_or_plasmid.1*`

do
sample=`echo ${R1} | cut -d'.' -f1 `
echo ${sample}
sample_shorter=`echo ${sample} | cut -d_ -f1`
echo ${sample_shorter}

#R2=`echo ${R1} | sed s/R1/R2/`
#
#echo ${R1},${R2},${sample}

bowtie2 -p10 -x ~/saccer3/chr/saccer3 --un-conc ${sample_shorter}_unaligned_notVoBFP_or_plasmid_or_saccer3.fq -1 ${sample}.1.fq -2 ${sample}.2.fq -S ${sample_shorter}_saccer3_again.sam
done

