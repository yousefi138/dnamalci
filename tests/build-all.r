library(rmarkdown)
library(knitr)

rmdfiles <- Sys.glob("~/repos/dnamalci/tests/*.rmd")

sapply(rmdfiles, function(x) render(x, output_format="all",
	output_dir = "~/repos/dnamalci"))
# sapply(rmdfiles, purl)
