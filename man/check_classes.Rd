% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/classes.R
\name{check_classes}
\alias{check_classes}
\title{Check Classes}
\usage{
check_classes(x, classes = character(0), exclusive = FALSE, order = FALSE,
  x_name = substitute(x), error = TRUE)
}
\arguments{
\item{x}{The object to check.}

\item{classes}{A character vector of the classes x should inherit from.}

\item{exclusive}{A flag indicating whether other classes are permitted.}

\item{order}{A flag indicating whether the object classes have to occur in the same order as classes.}

\item{x_name}{A string of the name of the object.}

\item{error}{A flag indicating whether to throw an informative error or immediately generate an informative message if the check fails.}
}
\value{
An invisible copy of x (if it doesn't throw an error).
}
\description{
Check Classes
}
\examples{
check_classes(list())
check_classes(list(), "list")
check_classes(list(), "numeric", error = FALSE)
}
