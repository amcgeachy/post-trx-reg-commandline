#!/bin/bash

for sample in up down no_recomb post_recomb
do
    samtools sort ${sample}.bam ${sample}.sorted
done
