#!/bin/bash                                                                                                       

for argument in $@ 
do
    sizefactor=$(grep ${argument} size_factors.txt | cut -f2)
    echo "GETTIN WIGGY WITH SAMPLE $argument with sizefactor $sizefactor"
    nohup wiggle-track -o ${argument}.wig -a ../expression/ribo_asite.txt -q ${sizefactor} ${argument}_genome_merge.bam
done
wait

for argument in $@
do
    wigToBigWig ${argument}_rev.wig hg19.chrom.sizes ${argument}_rev.bw &
    wigToBigWig ${argument}_fwd.wig hg19.chrom.sizes ${argument}_fwd.bw &
done


