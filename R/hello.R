# Hello, world!
#
# This is an example function named 'hello'
# which prints 'Hello, world!'.
#
# You can learn more about package authoring with RStudio at:
#
#   https://r-pkgs.org
#
# Some useful keyboard shortcuts for package authoring:
#
#   Install Package:           'Ctrl + Shift + B'
#   Check Package:             'Ctrl + Shift + E'
#   Test Package:              'Ctrl + Shift + T'

hello <- function() {
  print("Hello, world!")
}



##FUNCTION 3

#' DNAtoRNA
#' changes all the "T" (Thymine) to "U" (Uracil)
#' @param DNA input DNA sequence
#'
#' @returns output RNA sequence
#' @export
#'
#' @examples
#' DNAtoRNA(ATCCTAG)
DNAtoRNA <- function(DNA){
  RNA <- gsub("T", "U", DNA)
  return(RNA)
}

