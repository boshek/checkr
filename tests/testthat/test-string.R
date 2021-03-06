context("check-string")

test_that("check_string errors", {
  y <- "oeu"
  expect_identical(check_string(y), y)
  y <- 2
  expect_error(check_string(y), "y must be class character")
  y <- c(TRUE, TRUE)
  expect_error(check_string(y), "y must have 1 element")
  y <- character(0)
  expect_error(check_string(y), "y must have 1 element")})

test_that("check_string coerce", {
  expect_error(check_string(factor('1')), 'factor[(]"1"[)] must be class character')
  expect_identical(check_string(factor('1'), coerce = TRUE), "1")
  expect_error(check_string(factor(c('1', '1')), coerce = TRUE), 'factor[(]c[(]"1", "1"[)][)] must have 1 element')
})
