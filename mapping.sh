#!/bin/bash
DATA=/home/dator/NGS
REF=/home/dator/refgenome/Gmax_275_v2.0.fa
CPU=1
THR=1
BWA=/home/dator/bwa/bwa

exec &> bwa.log
cd $DATA
		parallel -j $CPU $BWA mem -t $THR $REF {}.fastq ">" {}.sam ::: $(ls -1 *.fastq | sed 's/.fastq//')
		if [ $? -ne 0 ]
			then 
				printf There is a problem in the alignment step
				exit 1
		fi
