#' Look at flydoc description
#' 
#' Look at the the description for your flydoc documentation
#' for a given function
#' 
#' @param fun A function
#' @export
Description <- function(fun){
    flydocGet("Description", fun)
}

#' Set a description
#' 
#' Set a description for your flydoc documentation for a
#' given function
#' 
#' @param func A function to add a flydoc description to.
#' @param value A character string containing 
#'  the description to add to the function's documentation
#' @export
"Description<-" <- function(func, value){
    invisible(flydocAssign("Description", func, value))
}
