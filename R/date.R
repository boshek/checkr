#' Check Date
#' 
#' Checks if x is a date (non-missing Date scalar).
#'
#' @param x The object to check.
#' @param x_name A string of the name of the object.
#' @param coerce A flag indicating whether to coerce a date time (POSIXt scalar) to a Date.
#' @param error A flag indicating whether to throw an informative error or immediately generate an informative message if the check fails.
#' @return An invisible copy of x (if it doesn't throw an error).
#' @export
#'
#' @examples
#' check_date(Sys.Date(), error = FALSE)
#' check_date(Sys.time(), error = FALSE)
#' check_date(Sys.time(), coerce = TRUE, error = FALSE)
check_date <- function(x,
                       coerce = FALSE,
                       x_name = substitute(x),
                       error = TRUE) {
  x_name <- deparse_x_name(x_name)
  
  check_flag_internal(coerce)
  check_flag_internal(error)
  
  if(coerce && is.POSIXt(x)) {
    x <- as.Date(x, tz = tz(x))
  }
  
  check_vector(x, values = as.Date("2001-01-01"), length = 1,
               x_name = x_name, error = error)
}
