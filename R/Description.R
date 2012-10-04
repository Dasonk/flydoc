#' Look at flydoc description
#' 
#' Look at the the description for your flydoc documentation
#' for a given function
#' 
#' @param fun A function
#' @export
Description <- function(fun){
    tryCatch(get("Description", envir = attr(fun, "flydoc")), 
             error = function(e){NULL})
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
    func <- flydoc(func)
    assign("Description", value, envir = attr(func, "flydoc"))
    return(invisible(func))
}
