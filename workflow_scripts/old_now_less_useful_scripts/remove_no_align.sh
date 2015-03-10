#!/bin/bash

for sample in up down post_recomb no_recomb
do
    awk -F "\t" '{if($1!=".") print $0}' ${sample}.bedpe > ${sample}.noNA.bedpe
done 
