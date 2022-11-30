#!/bin/bash


DATA=/Users/user/Desktop/Assignment/OneDrive_1_29-11-2022/sam2bam.sh 
REF=/Users/user/Desktop/Assignment/Gmax_275_v2.0.fa 
OUT=variantcalling
CPU=1

mkdir Assignment
cd Assignment

exec &> samt_var.log

samtools mpileup -g -f $REF -b $DATA > variants.bcf

	if [ $? -ne 0 ]
                        then
                                printf "There is a problem at the samtools_mpileup step"
                                exit 1
                fi


bcftools call -mv variants.bcf > variants.vcf

	if [ $? -ne 0 ]
                        then
                                printf "There is a problem at the bcf2vcf step"
                                exit 1
                fi
