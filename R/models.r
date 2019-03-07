#' List names of available models
#'
#' @export
dnamalci.models <- function() ls(models.global)

#' Add or update set of available models
#'
#' @param name Name of the model.
#' @param variables Names of CpG sites included in the model.
#' @param coefficients Coefficients of the CpG sites in the model.
#' @param description Text description of the model, e.g. publication.
#'
#' @export
dnamalci.add.model <- function(name, variables, coefficients, description) {
    model <- create.model(variables, coefficients, description)
    assign(name, model, envir=models.global)
    invisible(TRUE)
}

#' Retrieve model details
#'
#' @param name Name of the model.
#' @return Model details formatted as a named list.
#' 
#' @export
dnamalci.get.model <- function(name) {
    stopifnot(name %in% dnamalci.models())
    get(name, envir=models.global)
}

create.model <- function(variables, coefficients, description) {
    stopifnot(length(variables) == length(coefficients))
    names(coefficients) <- variables
    list(intercept=coefficients[1], coefficients=coefficients[-1], description=description)
}

load.models <- function(pkgname) {
    path <- system.file("model", package=pkgname)                               
    model <- read.csv(file.path(path, "models.csv"), stringsAsFactors=F)

    ## 144    
    dnamalci.add.model("dnamalc.144cpg", model$cpg, model$dnamalc.144cpg,
                         readLines(file.path(path, "readme.txt")))

    ## 78
    dnamalci.add.model("dnamalc.78cpg", model$cpg, model$dnamalc.78cpg,
                         readLines(file.path(path, "readme.txt")))

    ## 23
    dnamalci.add.model("dnamalc.23cpg", model$cpg, model$dnamalc.23cpg,
                         readLines(file.path(path, "readme.txt")))

    ## 5
    dnamalci.add.model("dnamalc.5cpg", model$cpg, model$dnamalc.5cpg,
                         readLines(file.path(path, "readme.txt")))                             
    
}

