test_that("no Ts left", {
  testseq <- "ACTTCGA"
  result <- DNAtoRNA(testseq)

  expect_no_match(result, "T")
})
