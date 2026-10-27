#' Codon Seperator
#'
#' @param Sequence Input a DNA sequence
#' @param start Input in which position you want the read to start and shift the read
#'
#' @returns Returns the DNA sequence divided into codons
#' @export
#'
#' @examples
#' GetCodons(Sequence = "ACUGCUGACUGGAACUUGGAACCUUU", start = 1)
GetCodons <- function(Sequence, start = 1){
  SeqLength <- nchar(Sequence)
  PredictedCodons <- substring(Sequence,
                      first = seq(from = start, to = SeqLength-3+1, by = 3),
                      last = seq(from = 3+start-1, to = SeqLength, by = 3))
  return(PredictedCodons)
}

