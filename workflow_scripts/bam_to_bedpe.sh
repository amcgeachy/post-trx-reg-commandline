#!/bin/bash

for sample in up down no_recomb post_recomb
do
    bedtools bamtobed -i ${sample}_pos.bam -bedpe > ${sample}_pos.bedpe
    bedtools bamtobed -i ${sample}_neg.bam -bedpe > ${sample}_neg.bedpe
done
