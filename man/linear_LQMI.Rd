% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/linear_LQMI.R
\name{do.lqmi}
\alias{do.lqmi}
\title{Linear Quadratic Mutual Information}
\usage{
do.lqmi(X, label, ndim = 2, preprocess = c("center", "scale", "cscale",
  "whiten", "decorrelate"))
}
\arguments{
\item{X}{an \eqn{(n\times p)} matrix or data frame whose rows are observations
and columns represent independent variables.}

\item{label}{a length-\eqn{n} vector of data class labels.}

\item{ndim}{an integer-valued target dimension.}

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
Linear Quadratic Mutual Information (LQMI) is a supervised linear dimension reduction method.
Quadratic Mutual Information is an efficient nonparametric estimation method for Mutual Information
for class labels not requiring class priors. For the KQMI formulation, LQMI is a linear equivalent.
}
\examples{
## generate 3 different groups of data X and label vector
x1 = matrix(rnorm(4*10), nrow=10)-20
x2 = matrix(rnorm(4*10), nrow=10)
x3 = matrix(rnorm(4*10), nrow=10)+20
X  = rbind(x1, x2, x3)
label = c(rep(1,10), rep(2,10), rep(3,10))

## compare against LDA
out1 = do.lda(X, label)
out2 = do.lqmi(X, label)

## visualize
par(mfrow=c(1,2))
plot(out1$Y[,1], out1$Y[,2], main="LDA projection")
plot(out2$Y[,1], out2$Y[,2], main="LQMI projection")

}
\references{
\insertRef{bouzas_graph_2015}{Rdimtools}
}
\seealso{
\code{\link{do.kqmi}}
}
\author{
Kisung You
}
