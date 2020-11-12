
# chickn

<!-- badges: start -->
<!-- badges: end -->

R package {chickn} implements Chromatogram Hierarchical Compressive K-means with Nystrom approximation clustering approach. It allows processing a large collection of high-resolution mass spectrometry signals (chromatographic profiles) relying on the compressed data version (data sketch). The Filebacked Big Matrix (FBM) class from the [bigstatsr](https://github.com/privefl/bigstatsr) package is used to store and to manipulate matrices, which cannot be load in memory.  

### Pre-requisites
`R version >= 3.5`, 
`bigstatsr >= 1.2.3`

OS tested: `Ubuntu`

chickn R package dependencies:
`foreach`, `doRNG`, `parallel`, `doParallel`, `Rcpp`, `RcppArmadillo`, `RcppParallel`, `nloptr`, `pracma`, `stats`, `MASS`,`zipfR`, `mvnfast`, `rmio`, `Rdpack`
     
## Installation

You can install {chickn} from GitLab with:

```R
devtools::install_gitlab(repo = "Olga.Permiakova/chickn")
```

### Typical installation error

If the `Rdpack` package instalation had non-zero exit status, you should first install the development version of [Rdpack](https://github.com/cran/Rdpack) from Github using:
```R
devtools::install_github("GeoBosh/Rdpack")
```
then proceed with the {chickn} package installation. 
## Example

This is a basic example which demonstrates how the complete {chickn} pipeline can be applied to a small part of the UPS2 data (toy dataset provided in the package):

``` r
library(chickn)
data(UPS2)
n = nrow(UPS2)
N = ncol(UPS2)
## Convert data into FBM format, a .bk file is generated in the working directory
UPS2_FBM = bigstatsr::FBM(init = UPS2, ncol=N, nrow = n, backingfile = "UPS2_FBM")$save()
## Apply main chickn function. 
output  <- CHICKN_W1(Data = UPS2_FBM, K = 2, k_total =32, 
                     max_neighbors = 10,DIR_output = getwd(), DIR_tmp = tempfile(),
                     ncores = 4, N0 = N, DoPreimage = TRUE)
## NB: The generated output files (NystromKernel, Centroids_out, Cluster_assign_out) are stored in DIR_output directory.                      
```

## Citing Our work
> The published article of the project will be linked here.
