% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/list.R
\name{check_list}
\alias{check_list}
\title{Check List}
\usage{
check_list(x, values, length = NA, unique = FALSE, sorted = FALSE,
  named = NA, x_name = substitute(x), error = TRUE)
}
\arguments{
\item{x}{The object to check.}

\item{values}{An optional vector or named list specifying the values.}

\item{length}{A flag indicating whether x should have elements (versus no elements) or a missing value indicating no requirements or a count or count range of the number of elements.}

\item{unique}{A flag indicating whether the values must be unique.}

\item{sorted}{A flag indicating whether the list must be sorted.}

\item{named}{A flag indicating whether the list must be named or unnamed or a regular expression that must match all the names or count or count range of the number of characters in the names or NA if it doesn't matter if the list is named.}

\item{x_name}{A string of the name of the object.}

\item{error}{A flag indicating whether to throw an informative error or immediately generate an informative message if the check fails.}
}
\value{
An invisible copy of x (if it doesn't throw an error).
}
\description{
Check List
}
