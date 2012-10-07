# Providing my own paste0 function so that
# we don't need to require R 2.15
paste0 <- function(..., collapse = NULL){
    paste(..., sep = "", collapse = collapse)
}
