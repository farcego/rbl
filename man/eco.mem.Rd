% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/funs_brokenstick.r
\name{eco.mem}
\alias{eco.mem}
\title{Subset the slots of bsm objects}
\usage{
eco.mem(x, n = 4, type = c("ignore", "delete", "reset"))
}
\arguments{
\item{x}{a \code{bsm} object or a list of \code{bsm} objects.}

\item{n}{set the number of slot to ignore as the \code{eco.mem} argument in the 
\code{\link{brokenstick}} function. The default \code{n = 4} returns 
abstracted dive profiles as if they were obtained from CTD-SRDL tags.}

\item{type}{A character indicating how the slots are to be handled. 
\code{"ignore"} puts aside the slots (renaming them) so they are ignored by other 
\code{bsm} processing functions but does not remove them. \code{"delete"} delete 
them so that less memory is used to store the object. 
\code{"reset"} reverse the \code{"ignore"} operation.}
}
\description{
\code{bsm} objects, depending on the \code{eco.mem} argument used when they were 
fitted using the \code{\link{brokenstick}} function, can contain numerous slots 
(detailed in \code{\link{brokenstick}}) keeping information about the high 
sampling frequency data. 
These information are usefull to get accurate computations in numerous cases but 
need to be ignored in order to mimic abstracted dive profiles such as 
those obtained by CTD-SRDL tags.
This function is a utility that allows to ignore these high sampling fequency 
information.
}
\examples{
data(exses)
bsm <- tdrply(brokenstick, 1:2, no = 100, obj = exses)[[1]]

bsm <- eco.mem(bsm, type = "ignore")
try(predict(bsm)) # error: required slots treated as absent
bsm <- eco.mem(bsm, type = "reset")
predict(bsm) # slots were restored
identical(bsm, x)

# Use type = "delete" to save some memory
lr_bytes <- object.size(eco.mem(bsm, type = "delete")) 
hr_bytes <- object.size(bsm)
paste0(round(100 * as.numeric(lr_bytes / hr_bytes), digits = 2), "\%")

# Works on lists
bsm <- eco.mem(tdrply(brokenstick, 1:2, no = 100:103, obj = exses), type = "delete")
# Same as
bsm <- tdrply(brokenstick, 1:2, no = 100:103, obj = exses, eco.mem = 4)
}
\keyword{brokenstick}

