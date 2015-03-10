#!/bin/bash

for sample in up down no_recomb post_recomb
do
    sort ${sample}.bedpe > ${sample}.sorted.bedpe
done
