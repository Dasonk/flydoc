# Make sure there is a flydoc environment associated
# with the function.  If not then add one.
flycheck <- function(fun){
    if(is.null(attr(fun, "flydoc"))){
        attr(fun, "flydoc") <- new.env(parent = emptyenv())
    }
    
    fun
}
