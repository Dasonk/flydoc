#' Run examples from flydoc function
#' 
#' Run the examples from the Examples section of the flydoc
#' documentation.
#' 
#' @param fun The function that has flydoc documentation
#' @export
fdExample <- function(fun){
    text <- Examples(fun)
    source(textConnection(text), echo = TRUE)
}