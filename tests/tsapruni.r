require(geograbbi)

## get covariate data
gse50660 <- geograbbi.get.samples("GSE50660")
geo_accession <- gse50660$geo_accession
gse50660 <- geograbbi.extract.characteristics(gse50660)
gse50660$geo_accession <- geo_accession

##get betas
betas <- geograbbi.get.data("GSE50660")

path <- system.file("model", package="dnamalci")                               
model <- read.csv(file.path(path, "models.csv"), stringsAsFactors=F)
beta <- betas[rownames(betas) %in% model$cpg, ]
write.csv(beta, file = "dnamalci/inst/gse50660.csv")

##list available models
dnamalci.models()

## apply the default model to methylation data
dnam.alc <- dnamalci.score(betas)
str(dnam.alc)


dnamalc.5cpg <- dnamalci.score(betas, model = "dnamalc.5cpg")
str(dnamalc.5cpg)

