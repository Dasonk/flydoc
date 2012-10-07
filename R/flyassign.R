# Internal function so that I can change how
# the documentation is stored if I want.
flyassign <- function(name, fun, value){
    fun <- flycheck(fun)
    assign(name, value, envir = attr(fun, "flydoc"))
    return(fun)
}
