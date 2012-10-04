#' Show the documentation for a flydoc function
#' 
#' This builds and shows the documentation for a function
#' that has been documented using flydoc
#' 
#' @param fun The function to show the flydoc for
#' @export
#' @examples
#' myfun <- function(x, y){
#'    x + y
#' }
#' Title(myfun) <- "My crazy function"
#' Description(myfun) <- "This function is a crazy function"
#' Arguments(myfun) <- c(x = "Value 1 to add", y = "Value 2 to add")
#' Return(myfun) <- "The sum of x and y"
#' Details(myfun) <- "This uses some pretty advanced math. You might need to read up on arithmetic"
#' Examples(myfun) <- "myfun(1, 2)"
#' \dontrun{
#' fdHelp(myfun)
#' }
fdHelp <- function(fun){
    
    funname <- as.character(substitute(fun))
    roxytext <- fdToRoxygen(fun, funname = funname)
    
    tdir <- tempdir()
    if(!file.exists(file.path(tdir, "man"))) dir.create(file.path(tdir, "man"))
    tfile <- tempfile(fileext = ".R")
    cat(roxytext, file = tfile)
    roclet <- rd_roclet()
    roc_proc(roclet, tfile, tdir)
    roc_out(roclet, tfile, tdir)
    
    file <- file.path(tdir, "man", paste(funname, ".Rd", sep = ""))
    
    # TODO: Add different options...
    temp <- tools::Rd2txt(file, 
                          out = tempfile("Rtxt"), 
                          package = "flydoc")
    file.show(temp, title = gettextf("R Help on %s", 
                                     sQuote(funname)), delete.file = TRUE)
    return(invisible())
}