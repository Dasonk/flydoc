#' Look at flydoc title
#' 
#' Look at the the title for your flydoc documnetation
#' for a given function
#' 
#' @param fun A function
#' @export
Title <- function(fun){
    fdGet("Title", fun)
}

#' Set a title
#' 
#' Set a title for your flydoc documentation for a
#' given function
#' 
#' @param func A function to add a flydoc title to.
#' @param value A character string containing the 
#'  title to add to the function's documentation
#' @export
"Title<-" <- function(func, value){
    invisible(fdAssign("Title", func, value))
}

