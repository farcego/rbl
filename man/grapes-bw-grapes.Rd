% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utils_pkgtools.r
\name{\%bw\%}
\alias{\%bw\%}
\title{Special operator to test if numeric values belong to a given range}
\usage{
x \%bw\% int
}
\arguments{
\item{x}{numeric values}

\item{int}{range. Can have more than two elements. Atomic vectors are interpreted 
as a single condition while lists as a list of conditions (recycled if needed).}
}
\description{
%bw% for "between". Values are evaluated against the upper and lower 
bounds with \code{<=} and \code{>=} operators.
}
\examples{
1:10 \%bw\% c(2, 9)
1:10 \%bw\% 2:10
1:10 \%bw\% list(1:4, 1:2)
}
\keyword{internal}

