#' Look at flydoc examples
#' 
#' Look at the the examples for your flydoc documnetation
#' for a given function
#' 
#' @param fun A function
#' @export
Examples <- function(fun){
    fdGet("Examples", fun)
}

#' Set some examples
#' 
#' Set some examples for your flydoc documentation for a
#' given function
#' 
#' @param func A function to add examples to.
#' @param value A character string containing the 
#'  examples to add to the function's documentation
#' @export
"Examples<-" <- function(func, value){
    invisible(fdAssign("Examples", func, value))
}
