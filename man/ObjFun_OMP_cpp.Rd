% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/RcppExports.R
\name{ObjFun_OMP_cpp}
\alias{ObjFun_OMP_cpp}
\title{Objective function}
\usage{
ObjFun_OMP_cpp(c, W, residue)
}
\arguments{
\item{c}{is a cluster centroid 1xn}

\item{W}{is a frequency matrix mxn}

\item{residue}{is a vector}
}
\value{
The objective function value
}
\description{
Objective function of the minimization with respect to the cluster centroids
}
\details{
The residue vector is equal to \eqn{(Sketch(Data, W) - \sum_{k=1}^K \alpha_k *Sketch(c_k, W))}.
}
\keyword{internal}
