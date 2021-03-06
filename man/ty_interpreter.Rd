% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/funs_tdr.r
\name{ty_interpreter}
\alias{ty_interpreter}
\title{Get detailed parse information from "ty" regular expressions}
\usage{
ty_interpreter(x, all = TRUE)
}
\arguments{
\item{x}{a kind of regular expression to subet rows of TDR datasets.}

\item{all}{should both leaf and branches be returned.}
}
\value{
a data frame with parsed text data.
}
\description{
Get detailed parse information from "ty" regular expressions
}
\details{
Take advantage of \code{\link{getParseData}} to decompose 
"ty" expression.
}
\examples{
View(ty_interpreter('-|(!(_/))|#########(_)'))
}
\keyword{internal}
\keyword{tdr_interpreter}

