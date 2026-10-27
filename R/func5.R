#' Plot Aminoacid frequencies
#' Given an aminoacid sequence, computes the frequency of every aminoacid and returns a bar plot of the counts.

#' @param amino_seq A character string containing an amino acid sequence.
#' @return Bar plot of the Aminoacid counts
#'
#' @examples
#' amino_freq("ACDEFGHIKLMNPQRSTVWY")
#'
#'
#' @importFrom ggplot2 ggplot aes geom_col theme_bw theme
#' @importFrom stringr str_split boundary str_count
#' @export

amino_freq <- function(amino_seq){

  # Aminoacid separation
  unique_aminos <- amino_seq |>
    stringr::str_split(pattern = stringr::boundary("character"), simplify = TRUE) |>
    as.character() |>
    unique()

  #Count the aminoacids with sapply
  counts <- sapply(unique_aminos, function(amino_acid) stringr::str_count(string = amino_seq, pattern =  amino_acid)) |>
    as.data.frame()


  colnames(counts) <- c("Counts")
  counts[["Amino_acid"]] <- rownames(counts)

  #Plot
  amino_counts <- counts |>
    ggplot2::ggplot(ggplot2::aes(x = Amino_acid, y = Counts, fill = Amino_acid)) +
    ggplot2::geom_col() +
    ggplot2::theme_bw() +
    ggplot2::theme(legend.position = "none")

  return(amino_counts)
}
