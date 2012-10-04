# checks the arguments that have been set
# if they aren't proper then it sets some defaults
argumentsCheck <- function(fun){
    #TODO: If Arguments is set check that it is proper
    arg <- Arguments(fun)
    if(!is.null(arg)){
        paste(names(arg), arg)
    }else{
        argnames <- names(formals(fun))
        n <- length(argnames)
        default <- paste(argnames, paste("argument", seq(n)))
        default
    }
}