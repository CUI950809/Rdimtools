% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/linear_CNPE.R
\name{do.cnpe}
\alias{do.cnpe}
\title{Complete Neighborhood Preserving Embedding}
\usage{
do.cnpe(X, ndim = 2, type = c("proportion", 0.1),
  preprocess = c("center", "scale", "cscale", "decorrelate", "whiten"))
}
\arguments{
\item{X}{an \eqn{(n\times p)} matrix or data frame whose rows are observations
and columns represent independent variables.}

\item{ndim}{an integer-valued target dimension.}

\item{type}{a vector of neighborhood graph construction. Following types are supported;
\code{c("knn",k)}, \code{c("enn",radius)}, and \code{c("proportion",ratio)}.
Default is \code{c("proportion",0.1)}, connecting about 1/10 of nearest data points
among all data points. See also \code{\link{aux.graphnbd}} for more details.}

\item{preprocess}{an additional option for preprocessing the data.
Default is "center". See also \code{\link{aux.preprocess}} for more details.}
}
\value{
a named list containing
\describe{
\item{Y}{an \eqn{(n\times ndim)} matrix whose rows are embedded observations.}
\item{trfinfo}{a list containing information for out-of-sample prediction.}
\item{projection}{a \eqn{(p\times ndim)} whose columns are basis for projection.}
}
}
\description{
One of drawbacks of Neighborhood Preserving Embedding (NPE) is the small-sample-size problem
under high-dimensionality of original data, where singular matrices to be decomposed suffer from
rank deficiency. Instead of applying PCA as a preprocessing step, Complete NPE (CNPE) transforms the
singular generalized eigensystem computation of NPE into two eigenvalue decomposition problems.
}
\examples{
\dontrun{
## generate data of 3 types with clear difference
dt1  = aux.gensamples(n=33)-50
dt2  = aux.gensamples(n=33)
dt3  = aux.gensamples(n=33)+50

## merge the data
X      = rbind(dt1,dt2,dt3)

## try different numbers for neighborhood size
out1 = do.cnpe(X, type=c("proportion",0.05))
out2 = do.cnpe(X, type=c("proportion",0.1))
out3 = do.cnpe(X, type=c("proportion",0.25))

## visualize
par(mfrow=c(1,3))
plot(out1$Y[,1], out1$Y[,2], main="CNPE::5\% connectivity")
plot(out2$Y[,1], out2$Y[,2], main="CNPE::10\% connectivity")
plot(out3$Y[,1], out3$Y[,2], main="CNPE::25\% connectivity")
}

}
\references{
\insertRef{wang_complete_2010}{Rdimtools}
}
\author{
Kisung You
}
