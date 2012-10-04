flydoc
==========

The `flydoc` package is designed to provide an easy way to document your functions on the fly.  If you've defined a function interactively this package will still allow you to provide a help file.  If you have a function stored in a script but don't want to or have the time to create a package for it - this will allow you to still provide some help documentation for those functions.

## Usage

You can add a help file for your own functions without putting them into a package using the `flydoc` package.  There are several ways to do this.

  - Add the documentation using several of the accessor functions. For instance if you have a function `myfun` you could add documentation using the following syntax

```r
library(flydoc)
myfun <- function(x, y){
  x + y
}
Title(myfun) <- "My awesome function"
Description(myfun) <- "This function allows you to add two numbers together"
Arguments(myfun) <- c(x = "Numeric. First number to add", y = "Numeric. Second number to add")
Return(myfun) <- "The sum of x and y"
Details(myfun) <- "You might need to study some arithmetic to understand this function"
Examples(myfun) <- "myfunction(1, 2)"
# Will show the documentation just like a normal function
fdHelp(myfun)
# Will run the examples stored in the documentation
fdExample(myfun)
```
You can achieve essentially the same thing by using the example stored in `fdHelp`
```r
library(flydoc)
example(fdHelp)
fdHelp(myfun)
fdExample(myfun)
```
  - You can have your function in a script with documentation and read it in with the `fdRead` function (not yet implemented).  There are two methods to store this documentation planned for the future.  You can have roxygen2 style documenation comments in the source code that will be read, parsed, and converted to the appropriate format so that you can use the `fdHelp` function to display.  The other alternative is to have normal comments directly after the function definition which will be used as the "description" in the help file.  You can add further documentation using the accessor functions.

## Goals

  1. Provide help documentation for functions that aren't currently installed in a package.
  2. Make the transition to turning local functions into an actual package easier by eventually providing functionality similar to [Rd2roxygen](http://cran.r-project.org/web/packages/Rd2roxygen/index.html) that will generate roxygen comments for you and add them to the scripts directly.
  3. Currently I'm settling by using a separate function to access the help files for the documentation created with `flydoc`.  Eventually I want this documentation to be accessible directly by using either `help(myflydocfunction)` or `?myflydocfunction`.
  4.  Currently I'm only allowing displaying text help and am using `file.show` for this.  Unfortunately this doesn't work in RStudio so I need to find a workaround for that...
    
## Installation

Currently there isn't a release on [CRAN](http://cran.r-project.org/).

You can, however, download the [zip ball](https://github.com/Dasonk/flydoc/zipball/master) or [tar ball](https://github.com/Dasonk/flydoc/tarball/master), decompress and run `R CMD INSTALL` on it, or use the **devtools** package to install the development version:

```r
## Make sure your current packages are up to date
update.packages()
## devtools is required
library(devtools)
install_github("flydoc", "Dasonk")
```