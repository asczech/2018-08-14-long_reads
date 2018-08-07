---
title: "Assembly of long reads (and Illumina reads)"
teaching: 30
exercises: 120
questions:
- "How do you assembly NGS reads to create a de novo assembly?"
- "What type of information is given by the assembler?" 
objectives:
- "To create de novo assemblies based on PacBio, Nanopore and Illumina data"
- "Learn to interpet assembly results and logs"
keypoints:
- "Each platform and each data sets requires hands-on work with the assembler"
apps:
- "./tools/canu-1.7.1/Linux-amd64/bin/canu"
---

In this section we focus on creating assemblies using Platanus (Illumina) and Canu (PacBio / Nanopore).

## Long read assemblies

We will start with Canu assemblies based on the PacBio and Nanopore data.
~~~
./tools/canu-1.7.1/Linux-amd64/bin/canu
~~~
{: .bash}

Canu can use a configuration file ('specs file'). For our assemblies we will use these settings:
~~~
useGrid=False
corOutCoverage=30  # default is 40
corMinCoverage=4 # default is 4
minOverlapLength=1000 # default is 500
minReadLength=1000
ovlMerDistinct=0.99 # change from auto mode to 0.99 in order to decrease runtime. 
maxThreads=1
maxMemory=2.5G
merylMemory=2.5G
merylThreads=1
cormhapThreads=1
cormhapMemory=2.5G
corMemory=2.5G
corThreads=1
obtovlMemory=2.5G
obtovlThreads=1
utgovlMemory=2.5G
utgovlThreads=1
oeaMemory=2.5G
oeaThreads=1

~~~
{: .bash}
> ## Configuration file
> Added the configuration line to a text file. The text editor **nano** is install in the VM. Name this file **canu.spec**.
>
> You can change the '...Memory' and '.../Threads' to optimize Canu run time. With **useGrid=True** on SLURM/SGE Canu will automatically divide jobs on the cluster. 
{: .challenge}

> ## Run Canu on PacBio data
> You can now run Canu using the following command:
> ~~~
> ./tools/canu-1.7.1/Linux-amd64/bin/canu -s results/canu.spec -pacbio-raw ./data/raw_data/pacbio_reads.fasta -p canu_pacbio -d results/canu_pacbio genomeSize=1M
> ~~~
> {: .bash}
{: .challenge}

> ## The Canu log file
> During the assembly process, Canu generates a report file. In this case:
> ~~~
> ./results/canu_pacbio/canu_pacbio.report
> ~~~
> {: .bash}
> Have a look at this file while Canu is running. What do you see?
> > ## Solution
> > Enter log file here
> {: .solution}
{: .challenge}
