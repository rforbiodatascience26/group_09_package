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
