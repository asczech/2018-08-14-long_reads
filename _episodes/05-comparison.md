---
title: "Comparison and visualization of long read assemblies"
teaching: 30
exercises: 120
questions:
- "How do you compare draft assemblies with mummerplots?"
- "How do you visualize repeat content?" 
objectives:
- "Knowing how to use mummerplots and how to interpet the results"
keypoints:
- "(Near-) exact contigs show up as a diagonal line in a mummerplot"
- "Repeat content shows up as dots / lines across the image"
apps:
- "nucmer"
- "mummerplot"
---

A common question to ask after finishing a de novo assembly is how does my new draft sequence looks like compared to either a reference genome or a previously created assembly.

To answer this question, we will use **mummerplot** to align two sequence files to each other and create a nice plot based on these alignments.

The first step is to align two fasta files using **nucmer**. Based on these alignment **mummerplot** will provide a PNG image with the matching regions, colored based on the identity score.

~~~
./tools/nucmer 
~~~
{: .bash}

~~~
./tools/mummerplot 
~~~
{: .bash}

> ## Comparison to cultivar reference genome
> Use both applications to compare the three assemblies to the reference sequence:
>~~~
> ./data/references/reference1MB.fasta
>~~~
>{: .bash}
> > ## PacBio
> {: .solution}
> > ## Nanopore
> {: .solution}
> > ## Illumina
> {: .solution}
> Now discus:
> 
> 1. What do you see? 
> 2. Are the assemblies similar to the reference or not? 
> 3. Which sequencing platform do you prefer?
{: .challenge}

> ## Comparison to TAIR10 reference genome
> Use both applications to compare the three assemblies to the reference sequence:
>~~~
> ./data/references/reference1MB.fasta
>~~~
>{: .bash}
> > ## PacBio
> {: .solution}
> > ## Nanopore
> {: .solution}
> > ## Illumina
> {: .solution}
> Now discus:
> 
> 1. What do you see? 
> 2. Are the assemblies similar to the TAIR10 genome or not? 
> 3. What does this mean for our cultivar?
{: .challenge}

> ## Repeats in the assemblies
{: .challenge}

> ## Comparison of assemblies
{: .challenge}

> ## Mapping reads to the assemblies
{: .challenge}
