#!/bin/bash

projPath=$1

for sample_directory in $projPath/*
do
    sample=$(basename ${sample_directory} | sed 's/^')
    zcat ${projPath}/
