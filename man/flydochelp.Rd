\name{flydochelp}
\alias{flydochelp}
\title{Show the documentation for a flydoc function}
\usage{
  flydochelp(fun)
}
\arguments{
  \item{fun}{The function to show the flydoc for}
}
\description{
  This builds and shows the documentation for a function
  that has been documented using flydoc
}
\examples{
myfun <- function(x, y){
   x + y
}
Title(myfun) <- "My crazy function"
Description(myfun) <- "This function is a crazy function"
Arguments(myfun) <- c(x = "Value 1 to add", y = "Value 2 to add")
\dontrun{
flydochelp(myfun)
}
}

