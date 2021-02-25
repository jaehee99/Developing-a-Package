test_that("multiplication works", {
  expect_equal(2 * 2, 4)
})

test_that("myseq_n",{

  myseq_n(x=c(2,4,3), n= 3)
  myseq_n(x=c(2,4,3), n= 4)
  myseq_n(x=c(2,4,3), n= 5)
  myseq_n(x=c(2,4,3), n= 6)
  myseq_n(x=c(2,4,3), n= 7)

})
