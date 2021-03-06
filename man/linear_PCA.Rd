% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/linear_PCA.R
\name{do.pca}
\alias{do.pca}
\title{Principal Component Analysis}
\usage{
do.pca(X, ndim = "auto", cor = FALSE, preprocess = c("center",
  "scale", "cscale", "decorrelate", "whiten"), varratio = 0.9)
}
\arguments{
\item{X}{an \eqn{(n\times p)} matrix or data frame whose rows are observations
and columns represent independent variables.}

\item{ndim}{an integer-valued target dimension or" "auto" option using \emph{varratio.}}

\item{cor}{mode of eigendecomposition. \code{FALSE} for decomposing covariance matrix,
and \code{TRUE} for correlation matrix.}

\item{preprocess}{an option for preprocessing the data. This supports three methods,
where default is "center". See also \code{\link{aux.preprocess}} for more details.}

\item{varratio}{a value in (0,1]. This value is only used when \code{ndim} is
chosen as "auto".}
}
\value{
a named list containing
\describe{
\item{Y}{an \eqn{(n\times ndim)} matrix whose rows are embedded observations.}
\item{vars}{a vector containing variances of projected data onto principal components.}
\item{projection}{a \eqn{(p\times ndim)} whose columns are principal components.}
\item{trfinfo}{a list containing information for out-of-sample prediction.}
}
}
\description{
\code{do.pca} performs a classical principal component analysis (PCA) using
\code{RcppArmadillo} package for faster and efficient computation.
}
\details{
A combination of \code{ndim="auto"} and \code{varratio} options is to
automatically decide the target dimension based on cumulative sum of
variance. Measured by summation of top eigenvalues from sample covariance,
we use the minimal summation to be larger than \code{varratio}.
}
\examples{
\dontrun{
## generate data with clear difference
X1 <- matrix(rnorm(100),nrow=10)-15
X2 <- matrix(rnorm(100),nrow=10)
X3 <- matrix(rnorm(100),nrow=10)+15
X  <- rbind(X1,X2,X3)

## try different preprocessing procedure
out1 <- do.pca(X, ndim=2, preprocess="center")
out2 <- do.pca(X, ndim=2, preprocess="decorrelate")
out3 <- do.pca(X, ndim=2, preprocess="whiten")

## visualize
par(mfrow=c(1,3))
plot(out1$Y[,1], out1$Y[,2], main="PCA::'center'")
plot(out2$Y[,1], out2$Y[,2], main="PCA::'decorrelate'")
plot(out3$Y[,1], out3$Y[,2], main="PCA::'whiten'")
}

}
\references{
\insertRef{pearson_liii._1901}{Rdimtools}
}
\author{
Changhee Suh
}
