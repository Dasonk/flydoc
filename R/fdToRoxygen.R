fdToRoxygen <- function(fun, funname = as.character(substitute(fun))){

    title <- nonNullDefault(Title(fun), funname)
    description <- nonNullDefault(Description(fun), funname)
    
    arguments <- paste("@param", 
                       argumentsCheck(fun))
    
    ret <- if(!is.null(Return(fun))){
        paste("@return", Return(fun))
    }else{
        ""
    }
    
    details <- if(!is.null(Details(fun))){
        c("@section Details:", Details(fun))
    }else{
        ""
    }
    
    examples <- if(!is.null(Examples(fun))){
        c("@examples", Examples(fun))
    }else{
        ""
    }
    
    export <- "@export" # is export needed?
    
    # for time being assume title, description, and arguments are set
    roxytext  <-c(title,
                  "",
                  description,
                  "",
                  arguments,
                  ret,
                  details,
                  examples,
                  export) 
    
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
