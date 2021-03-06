% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/RcppExports.R
\name{Gradient_cpp}
\alias{Gradient_cpp}
\title{Gradient and objective function}
\usage{
Gradient_cpp(x, SK, W, K)
}
\arguments{
\item{x}{is a data vector. Its first K*n components are cluster centroids and its last K components are the centroid weights.}

\item{SK}{is a data sketch vector.}

\item{W}{is a frequency matrix.}

\item{K}{is a number of cluster centroids.}
}
\value{
\itemize{
\item \code{gradient} is a gradient vector
\item \code{objective} is an objective function value \eqn{\|SK - \sum_{k=1}^K \alpha_k Sketch(c_k, W)\|}}
}
\description{
Global objective function and gradient computations with respect to cluster centroid vectors and their weights.
}
\keyword{internal}
