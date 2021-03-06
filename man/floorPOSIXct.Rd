% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utils_pkgtools.r
\name{floorPOSIXct}
\alias{floorPOSIXct}
\title{floorPOSIXct}
\usage{
floorPOSIXct(x, units = "days", offset = "0 days", ...)
}
\arguments{
\item{x}{The POSIXct vector}

\item{units}{How to cut the values. The units are partially matched in 
\code{c('secs', 'mins', 'hours', 'days')}. A number can precede the unit.}

\item{offset}{To use in the case where a cut occurs at a inconvenient
date (see examples).}
}
\description{
floorPOSIXct
}
\examples{
data(exses)
x <- exses$stat$time - 304*(24*3600)
plot(x, x, type = 'l')
lines(x, floorPOSIXct(x, '2days'), col = 'blue', type = 's')
# To force the cut to occur on the 1st January
lines(x, floorPOSIXct(x, '2days', '1d'), col = 'lightblue', type = 's')
lines(x, floorPOSIXct(x, 'days'), col = 'red', type = 's')
lines(x, floorPOSIXct(x, '0.5d'), col = 'green', type = 's')
}
\keyword{internal}

