#!/bin/bash

for sample in up down no_recomb post_recomb
do
    for flag in 99 147 83 163
    do
    samtools view -u -f ${flag} ${sample}.bam > ${sample}_${flag}.bam &
    done
done

