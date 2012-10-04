flydoc <- function(fun){
    if(is.null(attr(fun, "flydoc"))){
        attr(fun, "flydoc") <- new.env(parent = emptyenv())
    }
    fun
}