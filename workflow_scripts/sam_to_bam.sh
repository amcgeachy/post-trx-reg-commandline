#!/bin/bash

for sample in up down no_recomb post_recomb
do
    samtools view -Sb ${sample}.sam -o ${sample}.bam
done 
