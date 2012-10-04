#' Look at flydoc title
#' 
#' Look at the the title for your flydoc documnetation
#' for a given function
#' 
#' @param fun A function
#' @export
Title <- function(fun){
    tryCatch(get("Title", envir = attr(fun, "flydoc")), 
             error = function(e){NULL})
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
    func <- flydoc(func)
    assign("Title", value, envir = attr(func, "flydoc"))
    return(invisible(func))
}

