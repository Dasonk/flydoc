#' Show the documentation for a flydoc function
#' 
#' This builds and shows the documentation for a function
#' that has been documented using flydoc
#' 
#' @param fun The function to show the flydoc for
#' @export
flydochelp <- function(fun){
    
    funname <- as.character(substitute(fun))
    roxytext <- flydocToRoxygen(fun, funname = funname)
    
    tdir <- tempdir()
    if(!file.exists(file.path(tdir, "man"))) dir.create(file.path(tdir, "man"))
    tfile <- tempfile(fileext = ".R")
    cat(roxytext, file = tfile)
    roclet <- rd_roclet()
    roc_proc(roclet, tfile, tdir)
    roc_out(roclet, tfile, tdir)
    
    file <- file.path(tdir, "man", paste0(funname, ".Rd"))
    temp <- tools::Rd2txt(file, 
                          out = tempfile("Rtxt"), 
                          package = "flydoc")
    file.show(temp, title = gettextf("R Help on %s", 
                                     sQuote(funname)), delete.file = TRUE)
    return(invisible())
}