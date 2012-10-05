flyassign <- function(name, fun, value){
    fun <- flycheck(fun)
    assign(name, value, envir = attr(fun, "flydoc"))
    return(fun)
}