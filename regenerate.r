#' The steps below are needed to regenerate
#' the data objects and documentation files
#' included with the package and then
#' run all tests.

#' install.packages("devtools")
#' devtools::install_github("klutometis/roxygen")
packages <- c("devtools", "roxygen2", "knitr")
lapply(packages, require, character.only=T)


document("dnamalci")

system("R CMD INSTALL dnamalci")
reload(inst("dnamalci"))


