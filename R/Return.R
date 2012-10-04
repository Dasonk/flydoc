#' Look at flydoc return
#' 
#' Look at the the return for your flydoc documnetation
#' for a given function
#' 
#' @param fun A function
#' @export
Return <- function(fun){
    fdGet("Return", fun)
}

#' Set documentation for return
#' 
#' Set a return for your flydoc documentation for a
#' given function
#' 
#' @param func A function to add a flydoc return to.
#' @param value A character string containing the 
#'  return to add to the function's documentation
#' @export
"Return<-" <- function(func, value){
    invisible(fdAssign("Return", func, value))
}
