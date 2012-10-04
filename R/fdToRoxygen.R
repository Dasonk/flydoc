fdToRoxygen <- function(fun, funname = as.character(substitute(fun))){
    
    # for time being assume title, description, and arguments are set
    roxytext  <-c(Title(fun),
                  "",
                  Description(fun),
                  "",
                  paste("@param", paste(names(Arguments(fun)), Arguments(fun))),
                  "@examples",
                  Examples(fun),
                  "@export") # is export needed?
    roxytext <- paste("#'", roxytext, collapse = "\n")
    
    funargs <- capture.output(args(fun))
    funargs[1] <- paste(funname, "<-", funargs[1])
    
    roxytext <- paste(c(roxytext, funargs), collapse = "\n")
    return(roxytext)
}

# library(roxygen2)

# myfun <- function(x, y){
#     x + y
# }
# 
# Title(myfun) <- "My crazy function"
# Description(myfun) <- "This function is a crazy function"
# Arguments(myfun) <- c(x = "Value 1 to add", y = "Value 2 to add")
# 
# roxytext <- flydocToRoxygen(myfun)
# 
# 
# ## Need to find a better folder to put this stuff
# tdir <- tempdir()
# dir.create(file.path(tdir, "man"))
# tmp <- "tmpfile.R"
# cat(roxytext, file = file.path(tdir, tmp))
# roclet <- rd_roclet()
# roc_proc(roclet, file.path(tdir, tmp), tdir)
# roc_out(roclet, file.path(tdir, tmp), tdir)
# page(tools::Rd2txt(file.path(tdir, "man", "myfun.Rd")), method = "print")