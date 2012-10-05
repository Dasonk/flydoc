flyget <- function(value, fun){
        tryCatch(get(value, envir = attr(fun, "flydoc")), 
             error = function(e){NULL})
}