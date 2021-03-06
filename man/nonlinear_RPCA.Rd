% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/nonlinear_RPCA.R
\name{do.rpca}
\alias{do.rpca}
\title{Robust Principal Component Analysis}
\usage{
do.rpca(X, mu = 1, lambda = sqrt(1/(max(dim(X)))),
  preprocess = c("null", "center", "scale", "cscale", "decorrelate",
  "whiten"))
}
\arguments{
\item{X}{an \eqn{(n\times p)} matrix or data frame whose rows are observations and columns represent independent variables.}

\item{mu}{an augmented Lagrangian parameter}

\item{lambda}{parameter for the sparsity term \eqn{\|S\|_1}. Default value is given accordingly to the referred paper.}

\item{preprocess}{an additional option for preprocessing the data.
Default is "null". See also \code{\link{aux.preprocess}} for more details.}
}
\value{
a named list containing
\describe{
\item{L}{an \eqn{(n\times p)} low-rank matrix.}
\item{S}{an \eqn{(n\times p)} sparse matrix.}
\item{trfinfo}{a list containing information for out-of-sample prediction.}
}
}
\description{
Robust PCA (RPCA) is not like other methods in this package as finding explicit low-dimensional embedding with reduced number of columns.
Rather, it is more of a decomposition method of data matrix \eqn{X}, possibly noisy, into low-rank and sparse matrices by
solving the following,
\deqn{\textrm{minimize}\quad \|L\|_* + \lambda \|S\|_1 \quad{s.t.} L+S=X}
where \eqn{L} is a low-rank matrix, \eqn{S} is a sparse matrix and \eqn{\|\cdot\|_*} denotes nuclear norm, i.e., sum of singular values. Therefore,
it should be considered as \emph{preprocessing} procedure of denoising. Note that after RPCA is applied, \eqn{L} should be used
as kind of a new data matrix for any manifold learning scheme to be applied.
}
\examples{
\dontrun{
## Load Iris data and put some noise
data(iris)
noise = 0.2
X = as.matrix(iris[,1:4])
X = X + matrix(noise*rnorm(length(X)), nrow=nrow(X))

## try different regularization parameters
rpca1 = do.rpca(X, lambda=0.1)
rpca2 = do.rpca(X, lambda=1)
rpca3 = do.rpca(X, lambda=10)

## apply identical PCA methods
out1 = do.pca(rpca1$L, ndim=2)
out2 = do.pca(rpca2$L, ndim=2)
out3 = do.pca(rpca3$L, ndim=2)

## visualize
par(mfrow=c(1,3))
plot(out1$Y[,1], out1$Y[,2], main="RPCA+PCA::lambda=0.1")
plot(out2$Y[,1], out2$Y[,2], main="RPCA+PCA::lambda=1")
plot(out3$Y[,1], out3$Y[,2], main="RPCA+PCA::lambda=10")
}

}
\references{
\insertRef{candes_robust_2011}{Rdimtools}
}
\author{
Kisung You
}
