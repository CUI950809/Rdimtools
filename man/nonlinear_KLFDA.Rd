% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/nonlinear_KLFDA.R
\name{do.klfda}
\alias{do.klfda}
\title{Kernel Local Fisher Discriminant Analysis}
\usage{
do.klfda(X, label, ndim = 2, preprocess = c("center", "scale",
  "cscale", "decorrelate", "whiten"), type = c("proportion", 0.1),
  symmetric = c("union", "intersect", "asymmetric"),
  localscaling = TRUE, t = 1)
}
\arguments{
\item{X}{an \eqn{(n\times p)} matrix or data frame whose rows are observations
and columns represent independent variables.}

\item{label}{a length-\eqn{n} vector of data class labels.}

\item{ndim}{an integer-valued target dimension.}

\item{preprocess}{an additional option for preprocessing the data.
Default is "center". See also \code{\link{aux.preprocess}} for more details.}

\item{type}{a vector of neighborhood graph construction. Following types are supported;
\code{c("knn",k)}, \code{c("enn",radius)}, and \code{c("proportion",ratio)}.
Default is \code{c("proportion",0.1)}, connecting about 1/10 of nearest data points
among all data points. See also \code{\link{aux.graphnbd}} for more details.}

\item{symmetric}{one of \code{"intersect"}, \code{"union"} or \code{"asymmetric"} is supported. Default is \code{"union"}. See also \code{\link{aux.graphnbd}} for more details.}

\item{localscaling}{\code{TRUE} to use local scaling method for construction affinity matrix, \code{FALSE} for binary affinity.}

\item{t}{bandwidth parameter for heat kernel in \eqn{(0,\infty)}.}
}
\value{
a named list containing
\describe{
\item{Y}{an \eqn{(n\times ndim)} matrix whose rows are embedded observations.}
\item{trfinfo}{a list containing information for out-of-sample prediction.}
}
}
\description{
Kernel LFDA is a nonlinear extension of LFDA method using kernel trick. It applies conventional kernel method
to extend excavation of hidden patterns in a more flexible manner in tradeoff of computational load. For simplicity,
only the gaussian kernel parametrized by its bandwidth \code{t} is supported.
}
\examples{
\dontrun{
## generate 3 different groups of data X and label vector
x1 = matrix(rnorm(4*10), nrow=10)-20
x2 = matrix(rnorm(4*10), nrow=10)
x3 = matrix(rnorm(4*10), nrow=10)+20
X  = rbind(x1, x2, x3)
label = c(rep(1,10), rep(2,10), rep(3,10))

## try different affinity matrices
out1 = do.klfda(X, label, t=0.1)
out2 = do.klfda(X, label, t=1)
out3 = do.klfda(X, label, t=10)

## visualize
par(mfrow=c(1,3))
plot(out1$Y[,1], out1$Y[,2], main="bandwidth=0.1")
plot(out2$Y[,1], out2$Y[,2], main="bandwidth=1")
plot(out3$Y[,1], out3$Y[,2], main="bandwidth=10")
}

}
\references{
\insertRef{sugiyama_local_2006}{Rdimtools}

\insertRef{zelnik-manor_self-tuning_2005}{Rdimtools}
}
\seealso{
\code{\link{do.lfda}}
}
\author{
Kisung You
}
