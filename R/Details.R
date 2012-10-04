#' Look at flydoc details section
#' 
#' Look at the the details section for your flydoc documnetation
#' for a given function
#' 
#' @param fun A function
#' @export
Details <- function(fun){
    tryCatch(get("Details", envir = attr(fun, "flydoc")), 
             error = function(e){NULL})
}

#' Set a detail section
#' 
#' Set a title for your flydoc documentation for a
#' given function
#' 
#' @param func A function to add a flydoc details section to.
#' @param value A character string containing the 
#'  details section to add to the function's documentation
#' @export
"Details<-" <- function(func, value){
    func <- flydoc(func)
    assign("Details", value, envir = attr(func, "flydoc"))
    return(invisible(func))
}
