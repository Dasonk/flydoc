#' Look at flydoc arguments
#' 
#' Look at the the arguments for your flydoc documnetation
#' for a given function
#' 
#' @param fun A function
#' @export
Arguments <- function(fun){
    flyget("Arguments", fun)
}

#' Set the flydoc arguments documentation
#' 
#' Set the documentation for the arguments for a
#' given function
#' 
#' @param func A function to add flydoc argument documentation to.
#' @param value A named character vector containgin the 
#'  argument documentation to add to the function's documentation
#' @export
"Arguments<-" <- function(func, value){
    invisible(flyassign("Arguments", func, value))
}
