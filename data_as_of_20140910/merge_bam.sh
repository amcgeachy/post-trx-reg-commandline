#!/bin/bash

for sample in up down no_recomb post_recomb
do
        samtools merge -u - ${sample}_99.bam ${sample}_147.bam | samtools sort -n - ${sample}_pos &
	samtools merge -u - ${sample}_83.bam ${sample}_163.bam | samtools sort -n - ${sample}_neg &
done
