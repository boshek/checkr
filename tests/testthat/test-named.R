context("named")

test_that("named", {
  expect_error(check_named(2), "2 must be named")
  x <- 1
  names(x) <- "y"
  expect_identical(check_named(x), x)
  
  vec <- c(y = 1, y = 2)
  expect_error(check_named(vec, unique = TRUE), "names of vec must be unique")
  expect_error(check_named(vec, regex = "x"), "names of vec must match regular expression 'x'")
  
  vec <- c(y = 1, yy = 2)
  expect_error(check_named(vec, nchar = 1), "names of vec must have 1 character")
  expect_error(check_named(vec, nchar = c(2,4)), "names of vec must have at least 2 characters")
  expect_identical(check_named(vec, nchar = c(1,2)), vec)
})
