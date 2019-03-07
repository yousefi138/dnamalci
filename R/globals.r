.onLoad <- function(libname, pkgname) {
    env <- parent.env(environment())

    assign("models.global", new.env(), envir=env)
    load.models(pkgname)
}

