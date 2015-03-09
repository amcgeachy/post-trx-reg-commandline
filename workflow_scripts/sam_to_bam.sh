#!/bin/bash

for sample in a2 down2 mid2 norecomb up2
do
    samtools view -Sb ${sample}.sam -o ${sample}.bam
done 
