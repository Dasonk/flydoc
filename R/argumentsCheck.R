# checks the arguments that have been set
# if they aren't proper then it sets some defaults
argumentsCheck <- function(fun){
    #TODO: If Arguments is set check that it is proper
    argnames <- names(formals(fun))
    n <- length(argnames)
    default <- paste(argnames, paste("argument", seq(n)))
    nonNullDefault(Arguments(fun), default)
}