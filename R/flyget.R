# Internal function so that I can change how
# the documentation is stored if I want.
flyget <- function(value, fun){
        tryCatch(get(value, envir = attr(fun, "flydoc")), 
             error = function(e){NULL})
}
