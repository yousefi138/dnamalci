#' Retrieve dna methylation test dataset
#' 
#' This dataset is a minimal subset of CpGs from the 
#' Tsaprouni et al. 2014 data available at the
#' Gene Expression Omnibus (GEO), accession number GSE50660:
#' https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE50660

dnamalci.load.test.data <- function(){
	path <- system.file("gse50660", package="dnamalci")                               
	read.csv(file.path(path, "gse50660.csv"), row.names = 1, stringsAsFactors=F)
}
