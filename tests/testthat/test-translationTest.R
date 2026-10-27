test_that("DNA codons are translated correctly", {
  AAseq <- translation(codonsGiven = c("AUG", "GCU", "UGC", "CAA", "GGA",
                                       "UUC", "ACC", "CGU", "AAG", "UAA"))
  expect_equal(AAseq, "MACQGFTRK_")

})

