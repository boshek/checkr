context("tz")

test_that("tz", {
  expect_error(check_tz(Sys.Date()), 
               "Sys.Date[(][)] time zone must be 'UTC' [(]not ''[)]")
  expect_error(check_tz(Sys.time()), 
               "Sys.time[(][)] time zone must be 'UTC' [(]not ''[)]")
  x <- as.POSIXct("2000-01-02 03:04:55", tz = "Etc/GMT+8")
  expect_error(check_tz(x, tz = "PST8PDT"), 
               "x time zone must be 'PST8PDT' [(]not 'Etc[/]GMT[+]8'[)]")
})