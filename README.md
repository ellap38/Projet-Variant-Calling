# Projet-Variant-Calling
sabre : Sabre is a tool that will demultiplex barcoded reads into separate files. It will work on both single-end and paired-end data in fastq format.Sabre is mainly use for the demultiplexing step of variant calling.

cutad_for and cutad_parallel: Cutad is use for the trimming and cleaning step.Cutadapt finds and removes adapter sequences, primers, poly-A tails and other types of unwanted sequence from your high-throughput sequencing reads.Cutadapt helps with these trimming tasks by finding the adapter or primer sequences in an error-tolerant way. It can also modify and filter single-end and paired-end reads in various ways. Adapter sequences can contain IUPAC wildcard characters. Cutadapt can also demultiplex your reads. This will remove poor quality reads, short reads and chimera.

mapping : this script used with the BWA software package who will allow for the mapping step of the DNA sequences against a large reference genome, such as the human genome. It consists of three algorithms: BWA-backtrack, BWA-SW and BWA-MEM.

sam2bam :This script does the Alignment step with the Sequence Alignment/Map (SAM) or samtool format which is a generic nucleotide alignment format that describes the alignment of query sequences or sequencing reads to a reference sequence or assembly.

samt_var :this script does the variant calling step. VCF is a text file format (most likely stored in a compressed manner). It contains meta-information lines, a headerline, and then data lines each containing information about a position in the genome. The format also has the ability
to contain genotype information on samples for each position.
