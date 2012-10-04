#' Run examples from flydoc function
#' 
#' Run the examples from the Examples section of the flydoc
#' documentation.
#' 
#' @param fun The function that has flydoc documentation
#' @export
flydocExample <- function(fun){
    text <- attr(fun, "flydoc")$Examples
    source(textConnection(text), echo = TRUE)
}