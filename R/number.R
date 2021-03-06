#' Check Number
#'
#' Checks if object is a number (scalar real or if \code{coerce = TRUE} scalar integer).
#'
#' @param x The object to check.
#' @param coerce A flag indicating whether to coerce a scalar integer to a real.
#' @param x_name A string of the name of the object.
#' @param error A flag indicating whether to throw an informative error or immediately generate an informative message if the check fails.
#' @return An invisible copy of x (if it doesn't throw an error).
#' @export
#'
#' @examples
#' check_number(1.0)
#' check_number(c(1.0, 2.0), error = FALSE)
#' check_number(1L, error = FALSE)
#' check_number(1L, coerce = TRUE, error = FALSE)
check_number <- function(x, coerce = FALSE,
                       x_name = substitute(x),
                       error = TRUE) {
  x_name <- deparse_x_name(x_name)

  check_flag_internal(coerce)
  check_flag_internal(error)

  if(coerce && is.numeric(x)) {
    x <- as.numeric(x)     
  }
  
  check_vector(x, values = 1, length = 1, x_name = x_name, error = error)
}
