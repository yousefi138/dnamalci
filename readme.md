-   [dnamalci](#dnamalci)
    -   [Installation](#installation)
    -   [Example use](#example-use)

dnamalci
========

This package provides functions to easily apply the DNA methylation
alcohol scores (DNAm-Alcs) generated in:

> Liu C, Marioni RE, Hedman ÅK, Pfeiffer L, Tsai P-C, Reynolds LM et al.
> A DNA methylation biomarker of alcohol consumption. Mol Psychiatry
> 2016. <doi:10.1038/mp.2016.192>.

Installation
------------

Only a few steps are needed to install `dnamalci` in R. Just run the
following commands:

    install.packages("devtools") # if the devtools package is not installed
    library(devtools)
    install_github("yousefi138/dnamalci")

Example use
-----------

First, load a matrix of DNA methylation beta values of your choosing.

`dnamalci` installs with a test dataset which is a subset of results
from:

> Tsaprouni LG, Yang T-P, Bell J, Dick KJ, Kanoni S, Nisbet J et al.
> Cigarette smoking reduces DNA methylation levels at multiple genomic
> loci but the effect is partially reversible upon cessation.
> Epigenetics 2014; 9: 1382–1396.

This dataset is publicly available at GEO accession number
[GSE50660](https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE50660)
:

    betas <- dnamalci.load.test.data()
