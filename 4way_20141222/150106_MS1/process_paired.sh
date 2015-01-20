#!/bin/bash

projPath=$1

for sample_directory in $projPath/*
do
    sample=$(basename ${sample_directory} | cut -d'.' -f1) 
    echo ${sample}
    zcat ${projPath}/${sample} > ${sample}.fq
done
