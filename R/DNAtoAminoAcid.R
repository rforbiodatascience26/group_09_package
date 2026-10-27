GetCodons <- function(Sequence, start = 1){
  SeqLength <- nchar(Sequence)
  PredictedCodons <- substring(Sequence,
                      first = seq(from = start, to = SeqLength-3+1, by = 3),
                      last = seq(from = 3+start-1, to = SeqLength, by = 3))
  return(PredictedCodons)
}

