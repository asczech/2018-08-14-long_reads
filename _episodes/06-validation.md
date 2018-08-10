---
title: "Validation of assemblies using gene sequences and RNASeq"
teaching: 30
exercises: 120
questions: 
- "What is the quality of my assembly on a nucleotide level?"
- "What impact does a SNP have on gene structure and function?"
objectives:
keypoints:
apps:
- "./tools/minimap2-2.11_x64-linux/minimap2"
- "./tools/Tablet/tablet"
---

During this session we will use genes and RNASeq data to validate the results of the assembly process and investigate the impact of assembly errors on the gene content.


> ## Mapping reads to the assemblies
> 
> Use minimap2 to map the three read sets to each of the assemblies. For example, map the PacBio reads against the PacBio assembly.
> 
> You can use the Illumina and PacBio subsampled data to speed things up:
> ~~~
> ./data/raw_data/illumina_R1.subsample.fastq
> ./data/raw_data/illumina_R2.subsample.fastq
> ./data/pacbio_reads.subsample.fasta
> ~~~
> {: .bash}
> > ## Solution
> > ~~~
> > ./tools/minimap2-2.11_x64-linux/minimap2 -a -x sr ./results/illumina_assembly_contig.fa ./data/raw_data/illumina_R1.subsample.fastq ./data/raw_data/illumina_R2.subsample.fastq > ./results/illumina_assembly.sam
> > ./tools/minimap2-2.11_x64-linux/minimap2 -x map-pb -a ./results/canu_pacbio/canu_pacbio.contigs.fasta ./data/pacbio_reads.subsample.fasta > results/pacbio_assembly.subsample.sam
> > ./tools/minimap2-2.11_x64-linux/minimap2 -a -x map-ont ./results/canu_nanopore/canu_nanopore.contigs.fasta ./data/raw_data/nanopore_reads.fastq > results/nanopore_assembly.sam
> > ~~~
> > {: .bash}
> {: .solution}
{: .challenge}

> ## Visualizing the results
> Use Tablet to view the alignments.
> ~~~
> ./tools/Tablet/tablet
> ~~~
> {: .bash}
> Open Tablet and load the reference plus a SAM file. For each of the three results files, visually check:
> 
> 1. The number of mismatches, insertions and deletions (Tablet supports different **Color schemes** to help with this).
> 2. Coverage across the region
> 
> Discuss the differences between the three results. What type of errors do you see? How many of them?
{: .challenge}

> ## Mapping reads to the other assemblies
> Use minimap2 to map the three read sets to each of the other assemblies. For example, map the PacBio reads against the Illumina assembly.
> > ## Solution PacBio reads
> > ~~~
> > ./tools/minimap2-2.11_x64-linux/minimap2 -x map-pb -a ./results/illumina_assembly_contig.fa ./data/pacbio_reads.subsample.fasta > results/pacbio_illumina_assembly.subsample.sam
> > ./tools/minimap2-2.11_x64-linux/minimap2 -x map-pb -a ./results/canu_nanopore/canu_nanopore.contigs.fasta ./data/pacbio_reads.subsample.fasta > results/pacbio_nanopore_assembly.subsample.sam
> > ~~~
> > {: .bash}
> {: .solution}
> > ## Solution Nanopore reads
> > ~~~
> > ./tools/minimap2-2.11_x64-linux/minimap2 -a -x map-ont ./results/illumina_assembly_contig.fa ./data/raw_data/nanopore_reads.fastq > results/nanopore_illumina_assembly.sam
> > ./tools/minimap2-2.11_x64-linux/minimap2 -a -x map-ont ./results/canu_pacbio/canu_pacbio.contigs.fasta ./data/raw_data/nanopore_reads.fastq > results/nanopore_pacbio_assembly.sam
> > ~~~
> > {: .bash}
> {: .solution}
> > ## Solution Illumina reads
> > ~~~
> > ./tools/minimap2-2.11_x64-linux/minimap2 -a -x sr ./results/canu_pacbio/canu_pacbio.contigs.fasta ./data/raw_data/illumina_R1.subsample.fastq ./data/raw_data/illumina_R2.subsample.fastq > ./results/illumina_pacbio_assembly.sam
> > ./tools/minimap2-2.11_x64-linux/minimap2 -a -x sr ./results/canu_nanopore/canu_nanopore.contigs.fasta ./data/raw_data/illumina_R1.subsample.fastq ./data/raw_data/illumina_R2.subsample.fastq > ./results/illumina_nanopore_assembly.sam
> > ~~~
> > {: .bash}
> {: .solution}
> Visualize the results again in Tablet. 
{: .challenge}

