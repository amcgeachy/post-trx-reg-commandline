#!/bin/bash

for sample in up down no_recomb post_recomb
do
    samtools index ${sample}.sorted.bam
done
