#' Random Projection
#'
#' \code{do.rndproj} is a linear dimensionality reduction method based on
#' random projection technique, featured by the celebrated Johnson–Lindenstrauss lemma.
#'
#' The Johnson-Lindenstrauss(JL) lemma states that given \eqn{0 < \epsilon < 1}, for a set
#' \eqn{X} of \eqn{m} points in \eqn{R^N} and a number \eqn{n > 8log(m)/\epsilon^2},
#' there is a linear map \eqn{f:R^N} to {R^n} such that
#' \deqn{(1-\epsilon)|u-v|^2 \le |f(u)-f(v)|^2 \le (1+\epsilon)|u-v|^2}
#' for all \eqn{u,v} in \eqn{X}.
#'
#' Three types of random projections are supported for an \code{(p-by-ndim)} projection matrix \eqn{R}.
#' \enumerate{
#' \item Conventional approach is to use normalized Gaussian random vectors sampled from unit sphere \eqn{S^{p-1}}.
#' \item Achlioptas suggested to employ a sparse approach using samples from \eqn{\sqrt{3}(1,0,-1)} with probability \eqn{(1/6,4/6,1/6)}.
#' \item Li et al proposed to  sample from \eqn{\sqrt{s}(1,0,-1)}
#' with probability \eqn{(1/2s,1-1/s,1/2s)} for \eqn{s\ge 3}
#' to incorporate sparsity while attaining speedup with little loss in accuracy. While
#' the original suggsetion from the authors is to use \eqn{\sqrt{p}} or \eqn{p/log(p)}
#' for \eqn{s}, any user-supported \eqn{s \ge 3} is allowed.
#' }
#'
#'
#' @param X an \code{(n-by-p)} matrix or data frame whose rows are observations
#' and columns represent independent variables.
#' @param ndim an integer-valued target dimension.
#' @param preprocess an additional option for preprocessing the data.
#' Default is ``null'' and three options of ``center'',``decorrelate'', or ``whiten''
#' are supported. See also \code{\link{aux.preprocess}} for more details.
#' @param type a type of random projection, one of "gaussian","achlioptas" or "sparse".
#' @param s a tuning parameter for determining values in projection matrix. While default
#' is to use \eqn{max(log \sqrt{p},3)}, it is required for \eqn{s \ge 3}.
#' @return a named list containing
#' \describe{
#' \item{Y}{an \code{(n-by-ndim)} matrix whose rows are embedded observations.}
#' \item{projection}{a \code{(p-by-ndim)} whose columns are basis for projection.}
#' \item{epsilon}{an estimated error \eqn{\epsilon} in accordance with JL lemma.}
#' \item{trfinfo}{a list containing information for out-of-sample prediction.}
#' }
#'
#'@examples
#'# generate Swiss Roll data of 2,000 data points.
#'X <- aux.gensamples(n=2000)
#'
#'## 1. Gaussian projection
#'output1 <- do.rndproj(X,ndim=2)
#'
#'## 2. Achlioptas projection
#'output2 <- do.rndproj(X,ndim=2,type="achlioptas")
#'
#'## 3. Sparse projection
#'p <- ncol(X)   ## number of covariates
#'output3 <- do.rndproj(X,type="sparse",s=5)        ## fulfill condition on s
#'
#'## Visualize three different projections
#'par(mfrow=c(1,3))
#'plot(output1$Y[,1],output1$Y[,2],main="Gaussian")
#'plot(output2$Y[,1],output2$Y[,2],main="Arclioptas")
#'plot(output3$Y[,1],output3$Y[,2],main="Sparse")
#'
#'@references Johnson, W. and Lindenstrauss, J. (1984) \emph{Extensions of Lipschitz mappings into a Hilbert space}.
#'Contemporary Mathematics, 26:189-206.
#'@references Achlioptas, Dimitris (2003) \emph{Database-friendly random projections:Johnson-Lindenstrauss with binary coins}.
#'Journal of Computer and System Sciences, 66 4:671-687.
#'@references Li, P., Hastie, T.J., and Church, K.W. (2006) \emph{Very sparse random projections}.
#'Proceedings of the 12th ACMS SIGKDD international conference on Knowledge discovery and data mining, 287-296.
#'
#' @rdname linear_RNDPROJ
#' @export
do.rndproj <- function(X,ndim=2,preprocess="null",type="gaussian",s=max(sqrt(ncol(X)),3.0)){
  # 1. typecheck is always first step to perform.
  aux.typecheck(X)
  if ((!is.numeric(ndim))||(ndim<1)||(ndim>ncol(X))||is.infinite(ndim)||is.na(ndim)){
    stop("* do.rndproj : 'ndim' is a positive integer in [1,#(covariates)].")
  }
  k = as.integer(ndim)
  n = nrow(X)
  d = ncol(X)

  # 2. Parameters
  # 2-1. Common
  #   preprocess     : 'null'(default),'center','whiten','decorrelate'
  # 2-2. Random Projection Specific
  #   type           : 'gaussian'(default),'achlioptas','sparse'
  #   s for 'sparse' : sqrt(d), d/log(d), or >=3


  if (!is.element(preprocess,c("null","center","whiten","decorrelate"))){
    stop("* do.rndproj : 'preprocess' should have one of 4 values.")
  }
  rptype = type
  if (!is.element(rptype,c("gaussian","achlioptas","sparse"))){
    stop("* do.rndproj : 'type' parameter should be one of three options.")
  }
  if (rptype=="gaussian"){ # simple binarized option
    typegaussianflag = TRUE
  } else {
    typegaussianflag = FALSE
  }

  if (!is.numeric(s)||(s<3)||is.na(s)||is.infinite(s)){
    stop("* do.rndproj : 's' should be a positive value >= 3.")
  }
  if (rptype=="achioptas"){
    s = 3.0
  }

  # 3. Run
  #   3-1. preprocess
  if (preprocess=="null"){
    trfinfo = list()
    trfinfo$type = "null"
    pX = as.matrix(X,nrow=nrow(X))
  } else {
    tmplist = aux.preprocess(X,type=preprocess)
    trfinfo = tmplist$info
    pX      = tmplist$pX
  }
  #   3-2. main computation : gaussian and nongaussian
  result = list()
  if (typegaussianflag){
    output = method_rpgauss(pX,k)
    result$Y = output$Y
    result$projection = output$R
  } else {
    R = matrix(
      sample(x=c(sqrt(s),0,-sqrt(s)),
             prob=c(1/(2*s),1-(1/s),1/(2*s)),replace=TRUE,size=(d*k)),
      nrow=d
    )
    Y = pX %*% R
    result$Y = Y
    result$projection = R
  }
  #   3-3. compute epsilon
  dist1 = as.matrix(dist(pX))^2
  dist2 = as.matrix(dist(result$Y))^2

  distR = dist2/dist1
  idxweird = union(which(is.na(distR)),which(is.infinite(distR)))
  distR[idxweird] = 1
  result$epsilon = max(abs(distR-1))

  trfinfo$algtype   = "linear"
  result$trfinfo    = trfinfo
  return(result)
}