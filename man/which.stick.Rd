% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/funs_brokenstick.r
\name{which.stick}
\alias{which.stick}
\title{To which brokenstick segment a point belongs to ?}
\usage{
which.stick(object, pts, type = c("x", "i"))
}
\arguments{
\item{object}{Object of class inheriting from "\code{bsm}".}

\item{pts}{The set of the points to match aginst sticks.}

\item{type}{The type of values provided in \code{pts}. To choose in 
\code{c('x', 'i')} where \code{'x'} stands for x values and \code{'i'} stands 
for the index of values.}
}
\description{
Given a brokenstick model and a set of points, the function determines on which 
stick the points are located.
}
\examples{
data(exses)
dv <- tdrply(identity, 1:2, no = 100, obj = exses)[[1]]
bsm <- brokenstick(dv) 
(pts <- sample(1:nrow(dv), 5))
which.stick(bsm, pts, type = 'i')
which.stick(bsm, dv[pts, 1], type = 'x')

\dontrun{
# For the actual points of the model the result does not matter so much
# since both of previous and next segment are valid for prediction.
which.stick(bsm, bsm$pts, 'i')
}
}
\seealso{
\code{\link{predict.bsm}}
}
\keyword{brokenstick}
\keyword{internal}

