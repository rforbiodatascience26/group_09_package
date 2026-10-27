translation <- function(codonsGiven){
  AminoSequence <- paste0(codons[codonsGiven], collapse = "")
  return(AminoSequence)
}
