#!/bin/bash

for sample in up down no_recomb post_recomb
do
    sort ${sample}.noNA.bedpe > ${sample}.noNA.sorted.bedpe
    bedtools genomecov -d -i ${sample}.noNA.sorted.bedpe -g ~/saccer3/chr/saccer3.chrom.sizes > ${sample}.cov    
done
