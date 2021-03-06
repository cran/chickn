% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Sketch.R
\name{split_foreach}
\alias{split_foreach}
\title{split_foreach}
\usage{
split_foreach(FUN, ind, ..., .combine = NULL, ncores = 4, nb_split = ncores)
}
\arguments{
\item{FUN}{is a function that is executed in the loop}

\item{ind}{is a index vector}

\item{...}{are parameters of the function FUN}

\item{.combine}{is a rule to combine the result}

\item{ncores}{is a nuber of cores}

\item{nb_split}{is a nuber of splits}
}
\value{
The result of the FUN function
}
\description{
implements block foreach loop
}
\keyword{internal}
