\name{fdHelp}
\alias{fdHelp}
\title{Show the documentation for a flydoc function}
\usage{
  fdHelp(fun)
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
Return(myfun) <- "The sume of x and y"
Details(myfun) <- "This uses some pretty advanced math. You might need to read up on arithmetic"
Examples(myfun) <- "myfun(1, 2)"
\dontrun{
fdHelp(myfun)
}
}

