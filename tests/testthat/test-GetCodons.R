test_that("GetCodons extracts correct codons in standard frame (start = 1)", {
  dna <- "ATGCGATAG"
  expected <- c("ATG", "CGA", "TAG")

  result <- GetCodons(dna)

  expect_equal(result, expected)
  expect_type(result, "character")
  expect_length(result, 3)
})

test_that("GetCodons respects starting reading frame offsets", {
  dna <- "ATGCGATAG"

  # Reading frame starting at position 2
  expect_equal(GetCodons(dna, start = 2), c("TGC", "GAT"))

  # Reading frame starting at position 3
  expect_equal(GetCodons(dna, start = 3), c("GCG", "ATA"))
})

test_that("GetCodons ignores incomplete trailing nucleotides", {
  dna_7bp <- "ATGCGAT"   # 7 nucleotides (2 full codons + 1 leftover)
  dna_8bp <- "ATGCGATA"  # 8 nucleotides (2 full codons + 2 leftovers)

  expect_equal(GetCodons(dna_7bp), c("ATG", "CGA"))
  expect_equal(GetCodons(dna_8bp), c("ATG", "CGA"))
})
