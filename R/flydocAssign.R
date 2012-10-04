flydocAssign <- function(name, fun, value){
    fun <- flydoc(fun)
    assign(name, value, envir = attr(fun, "flydoc"))
    return(fun)
}