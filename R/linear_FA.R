#' Exploratory Factor Analysis
#'
#' \code{do.fa} is an optimization-based implementation of a popular technique,
#' \emph{Exploratory Factor Analysis}. \href{https://en.wikipedia.org/wiki/Factor_analysis#Exploratory_factor_analysis_versus_principal_components_analysis}{This link}
#' explains similarities and intrinsic differences between a closely-related method of Principal Component Analysis (PCA).
#'
#'
#' @param X an \eqn{(n\times p)} matrix or data frame whose rows are observations
#' and columns represent independent variables.
#' @param ndim an integer-valued number of loading variables, or target dimension.
#' @param preprocess an additional option for preprocessing the data.
#' Default is "center". See also \code{\link{aux.preprocess}} for more details.
#' @param maxiter maximum number of iterations for updating.
#' @param tolerance stopping criterion in a Frobenius norm.
#'
#' @return a named list containing
#' \describe{
#' \item{Y}{an \eqn{(n\times ndim)} matrix whose rows are embedded observations.}
#' \item{trfinfo}{a list containing information for out-of-sample prediction.}
#' \item{projection}{a \eqn{(p\times ndim)} whose columns are basis for projection.}
#' \item{loadings}{a \eqn{(p\times ndim)} matrix whose rows are extracted loading factors.}
#' \item{noise}{a length-\eqn{p} vector of estimated noise.}
#' }
#'
#' @examples
#' \dontrun{
#' ## generate data
#' X = aux.gensamples(n=496)
#'
#' ## 1. use centered data
#' output1 <- do.fa(X,ndim=2)
#'
#' ## 2. use decorrelated data
#' output2 <- do.fa(X,ndim=2,preprocess="decorrelate")
#'
#' ## 3. use whitened data
#' output3 <- do.fa(X,ndim=2,preprocess="whiten")
#'
#' ## Visualize three different projections
#' par(mfrow=c(1,3))
#' plot(output1$Y[,1],output1$Y[,2],main="centered")
#' plot(output2$Y[,1],output2$Y[,2],main="decorrelated")
#' plot(output3$Y[,1],output3$Y[,2],main="whitened")
#' }
#'
#' @references
#' \insertRef{spearman_general_1904}{Rdimtools}
#'
#' @rdname linear_FA
#' @author Kisung You
#' @export
do.fa <- function(X,ndim=2,preprocess=c("center","scale","cscale","decorrelate","whiten"),
                  maxiter=1000,tolerance=1e-6){
  # 1. typecheck is always first step to perform.
  aux.typecheck(X)
  if ((!is.numeric(ndim))||(ndim<1)||(ndim>ncol(X))||is.infinite(ndim)||is.na(ndim)){
    stop("* do.fa : 'ndim' is a positive integer in [1,#(covariates)].")
  }
  ndim = as.integer(ndim)

  # 2. ... parameters
  #   preprocess : 'center','decorrelate', or 'whiten'
  #   maxiter    : 1000 (default) or positive integer
  #   tolerance  : 1e-10 in Frobenius norm (default)

  algpreprocess = match.arg(preprocess)
  if ((maxiter<5)||(!is.numeric(maxiter))||is.na(maxiter)||is.infinite(maxiter)){
    stop("* do.fa : 'maxiter' is invalid, i.e., use a suitable positive integer >= 5.")
  }
  maxiter = as.integer(max(1000,maxiter))
  if ((!is.numeric(tolerance))||is.na(tolerance)||is.infinite(tolerance)){
    stop("* do.fa : 'tolerance' is for stopping criterion. Input is invalid.")
  }
  tolerance = min(tolerance,1e-10)

  # 3. preprocessing
  tmplist = aux.preprocess.hidden(X,type=algpreprocess,algtype="linear")
  trfinfo = tmplist$info
  pX      = tmplist$pX

  tpX = t(pX)
  output = method_fa(tpX,ndim,maxiter,tolerance);

  # 4. return output : be careful of size
  result = list()
  result$Y = t(output$Z)
  result$trfinfo = trfinfo

  LHS = tpX %*% (tmplist$pX)
  RHS = tpX %*% result$Y
  result$projection = aux.adjprojection(solve(LHS,RHS))

  result$loadings = t(output$L)
  result$noise   = output$Pvec
  return(result)
}
