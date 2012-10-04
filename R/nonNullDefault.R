nonNullDefault <- function(value, default){
    if(!is.null(value)){
        value
    }else{
        default
    }
}
