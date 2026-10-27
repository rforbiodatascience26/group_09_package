
#' Translation from a codon character vector
#'
#' @param codonsGiven character vector of codons
#'
#' @returns Amino Acid Sequence
#' @export
#'
#' @examples
#' codonList <- c("GCU","CUU","GCG","GCG","GCU")
#' AAsequence <- translation(codonList)
#' print(AAsequence)
#'

translation <- function(codonsGiven){
  AminoSequence <- paste0(codons[codonsGiven], collapse = "")
  return(AminoSequence)
}
