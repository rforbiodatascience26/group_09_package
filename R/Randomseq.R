#' randomseq
#'
#' @param size Set the size of the DNA sequence
#'
#' @returns a random DNA sequence with a determined amount of bases
#' @export
#'
#' @examples
#'randomseq(10)
#'randomseq(5)
#'
randomseq <- function(size){
  randomseq <- sample(c("A", "T", "G", "C"), size = size, replace = TRUE)
  finalseq <- paste0(randomseq, collapse = "")
  return(finalseq)
}
