#' chickn-package
#' 
#' R package \code{chickn} implements Chromatogram Hierarchical Compressive K-means with Nystrom approximation 
#' clustering approach. It is designed to cluster a large collection of high-resolution 
#' mass spectrometry signals (chromatographic profiles) relying on the compressed data version (data sketch). 
#' Data compression is achieved using the Nystrom method and the sketch operator from \insertCite{DBLP:journals/corr/KerivenBGP16}{chickn}.
#' The Filebacked Big Matrix (FBM) class from the [bigstatsr](https://github.com/privefl/bigstatsr) package 
#' is used to store and to manupulate matrices, which cannot be load in memory.  
#' @references 
#' \itemize{
#' \item \insertRef{wang2019scalable}{chickn}
#' \item \insertRef{DBLP:journals/corr/KerivenBGP16}{chickn}.
#' }
#' @docType package
#' @author Olga Permiakova
#' @import bigstatsr RcppParallel mvnfast zipfR MASS pracma nloptr foreach doRNG parallel doParallel
#' @importFrom Rcpp evalCpp
#' @useDynLib chickn, .registration=TRUE
#' @name chickn
NULL  