// Generated by using Rcpp::compileAttributes() -> do not edit by hand
// Generator token: 10BE3573-1514-4C36-9D1C-5A225CD40393

#include <RcppArmadillo.h>
#include <Rcpp.h>

using namespace Rcpp;

// aux_preprocess
Rcpp::List aux_preprocess(arma::mat& X, const int flag);
RcppExport SEXP _Rdimtools_aux_preprocess(SEXP XSEXP, SEXP flagSEXP) {
BEGIN_RCPP
    Rcpp::RObject rcpp_result_gen;
    Rcpp::RNGScope rcpp_rngScope_gen;
    Rcpp::traits::input_parameter< arma::mat& >::type X(XSEXP);
    Rcpp::traits::input_parameter< const int >::type flag(flagSEXP);
    rcpp_result_gen = Rcpp::wrap(aux_preprocess(X, flag));
    return rcpp_result_gen;
END_RCPP
}
// aux_perplexity
Rcpp::List aux_perplexity(arma::mat& X, const double perplexity);
RcppExport SEXP _Rdimtools_aux_perplexity(SEXP XSEXP, SEXP perplexitySEXP) {
BEGIN_RCPP
    Rcpp::RObject rcpp_result_gen;
    Rcpp::RNGScope rcpp_rngScope_gen;
    Rcpp::traits::input_parameter< arma::mat& >::type X(XSEXP);
    Rcpp::traits::input_parameter< const double >::type perplexity(perplexitySEXP);
    rcpp_result_gen = Rcpp::wrap(aux_perplexity(X, perplexity));
    return rcpp_result_gen;
END_RCPP
}
// aux_shortestpath
Rcpp::NumericMatrix aux_shortestpath(NumericMatrix& wmat);
RcppExport SEXP _Rdimtools_aux_shortestpath(SEXP wmatSEXP) {
BEGIN_RCPP
    Rcpp::RObject rcpp_result_gen;
    Rcpp::RNGScope rcpp_rngScope_gen;
    Rcpp::traits::input_parameter< NumericMatrix& >::type wmat(wmatSEXP);
    rcpp_result_gen = Rcpp::wrap(aux_shortestpath(wmat));
    return rcpp_result_gen;
END_RCPP
}
// aux_landmarkMaxMin
int aux_landmarkMaxMin(arma::mat& pD, arma::vec& plandmark, arma::vec& seqnp);
RcppExport SEXP _Rdimtools_aux_landmarkMaxMin(SEXP pDSEXP, SEXP plandmarkSEXP, SEXP seqnpSEXP) {
BEGIN_RCPP
    Rcpp::RObject rcpp_result_gen;
    Rcpp::RNGScope rcpp_rngScope_gen;
    Rcpp::traits::input_parameter< arma::mat& >::type pD(pDSEXP);
    Rcpp::traits::input_parameter< arma::vec& >::type plandmark(plandmarkSEXP);
    Rcpp::traits::input_parameter< arma::vec& >::type seqnp(seqnpSEXP);
    rcpp_result_gen = Rcpp::wrap(aux_landmarkMaxMin(pD, plandmark, seqnp));
    return rcpp_result_gen;
END_RCPP
}
// aux_kernelcov
Rcpp::List aux_kernelcov(arma::mat& tX, const int knumber, const double par1, const double par2);
RcppExport SEXP _Rdimtools_aux_kernelcov(SEXP tXSEXP, SEXP knumberSEXP, SEXP par1SEXP, SEXP par2SEXP) {
BEGIN_RCPP
    Rcpp::RObject rcpp_result_gen;
    Rcpp::RNGScope rcpp_rngScope_gen;
    Rcpp::traits::input_parameter< arma::mat& >::type tX(tXSEXP);
    Rcpp::traits::input_parameter< const int >::type knumber(knumberSEXP);
    Rcpp::traits::input_parameter< const double >::type par1(par1SEXP);
    Rcpp::traits::input_parameter< const double >::type par2(par2SEXP);
    rcpp_result_gen = Rcpp::wrap(aux_kernelcov(tX, knumber, par1, par2));
    return rcpp_result_gen;
END_RCPP
}
// aux_eigendecomposition
Rcpp::List aux_eigendecomposition(arma::mat& X);
RcppExport SEXP _Rdimtools_aux_eigendecomposition(SEXP XSEXP) {
BEGIN_RCPP
    Rcpp::RObject rcpp_result_gen;
    Rcpp::RNGScope rcpp_rngScope_gen;
    Rcpp::traits::input_parameter< arma::mat& >::type X(XSEXP);
    rcpp_result_gen = Rcpp::wrap(aux_eigendecomposition(X));
    return rcpp_result_gen;
END_RCPP
}
// aux_minmax
arma::mat aux_minmax(arma::mat& X, const double gap);
RcppExport SEXP _Rdimtools_aux_minmax(SEXP XSEXP, SEXP gapSEXP) {
BEGIN_RCPP
    Rcpp::RObject rcpp_result_gen;
    Rcpp::RNGScope rcpp_rngScope_gen;
    Rcpp::traits::input_parameter< arma::mat& >::type X(XSEXP);
    Rcpp::traits::input_parameter< const double >::type gap(gapSEXP);
    rcpp_result_gen = Rcpp::wrap(aux_minmax(X, gap));
    return rcpp_result_gen;
END_RCPP
}
// methods_boxcount
arma::mat methods_boxcount(arma::mat& tX, arma::vec& Imin, const double currentr);
RcppExport SEXP _Rdimtools_methods_boxcount(SEXP tXSEXP, SEXP IminSEXP, SEXP currentrSEXP) {
BEGIN_RCPP
    Rcpp::RObject rcpp_result_gen;
    Rcpp::RNGScope rcpp_rngScope_gen;
    Rcpp::traits::input_parameter< arma::mat& >::type tX(tXSEXP);
    Rcpp::traits::input_parameter< arma::vec& >::type Imin(IminSEXP);
    Rcpp::traits::input_parameter< const double >::type currentr(currentrSEXP);
    rcpp_result_gen = Rcpp::wrap(methods_boxcount(tX, Imin, currentr));
    return rcpp_result_gen;
END_RCPP
}
// method_pca
Rcpp::List method_pca(arma::mat& psdX);
RcppExport SEXP _Rdimtools_method_pca(SEXP psdXSEXP) {
BEGIN_RCPP
    Rcpp::RObject rcpp_result_gen;
    Rcpp::RNGScope rcpp_rngScope_gen;
    Rcpp::traits::input_parameter< arma::mat& >::type psdX(psdXSEXP);
    rcpp_result_gen = Rcpp::wrap(method_pca(psdX));
    return rcpp_result_gen;
END_RCPP
}
// method_mds
Rcpp::List method_mds(arma::mat& centerX);
RcppExport SEXP _Rdimtools_method_mds(SEXP centerXSEXP) {
BEGIN_RCPP
    Rcpp::RObject rcpp_result_gen;
    Rcpp::RNGScope rcpp_rngScope_gen;
    Rcpp::traits::input_parameter< arma::mat& >::type centerX(centerXSEXP);
    rcpp_result_gen = Rcpp::wrap(method_mds(centerX));
    return rcpp_result_gen;
END_RCPP
}
// method_mdsD
Rcpp::List method_mdsD(arma::mat& D);
RcppExport SEXP _Rdimtools_method_mdsD(SEXP DSEXP) {
BEGIN_RCPP
    Rcpp::RObject rcpp_result_gen;
    Rcpp::RNGScope rcpp_rngScope_gen;
    Rcpp::traits::input_parameter< arma::mat& >::type D(DSEXP);
    rcpp_result_gen = Rcpp::wrap(method_mdsD(D));
    return rcpp_result_gen;
END_RCPP
}
// method_ica
Rcpp::List method_ica(arma::mat& X, const int C, const int maxiter, const double tol, const int tnum, const double tpar, bool sym);
RcppExport SEXP _Rdimtools_method_ica(SEXP XSEXP, SEXP CSEXP, SEXP maxiterSEXP, SEXP tolSEXP, SEXP tnumSEXP, SEXP tparSEXP, SEXP symSEXP) {
BEGIN_RCPP
    Rcpp::RObject rcpp_result_gen;
    Rcpp::RNGScope rcpp_rngScope_gen;
    Rcpp::traits::input_parameter< arma::mat& >::type X(XSEXP);
    Rcpp::traits::input_parameter< const int >::type C(CSEXP);
    Rcpp::traits::input_parameter< const int >::type maxiter(maxiterSEXP);
    Rcpp::traits::input_parameter< const double >::type tol(tolSEXP);
    Rcpp::traits::input_parameter< const int >::type tnum(tnumSEXP);
    Rcpp::traits::input_parameter< const double >::type tpar(tparSEXP);
    Rcpp::traits::input_parameter< bool >::type sym(symSEXP);
    rcpp_result_gen = Rcpp::wrap(method_ica(X, C, maxiter, tol, tnum, tpar, sym));
    return rcpp_result_gen;
END_RCPP
}
// method_rpgauss
Rcpp::List method_rpgauss(arma::mat& X, const int k);
RcppExport SEXP _Rdimtools_method_rpgauss(SEXP XSEXP, SEXP kSEXP) {
BEGIN_RCPP
    Rcpp::RObject rcpp_result_gen;
    Rcpp::RNGScope rcpp_rngScope_gen;
    Rcpp::traits::input_parameter< arma::mat& >::type X(XSEXP);
    Rcpp::traits::input_parameter< const int >::type k(kSEXP);
    rcpp_result_gen = Rcpp::wrap(method_rpgauss(X, k));
    return rcpp_result_gen;
END_RCPP
}
// method_fa
Rcpp::List method_fa(arma::mat& X, const int k, const int maxiter, const double tolerance);
RcppExport SEXP _Rdimtools_method_fa(SEXP XSEXP, SEXP kSEXP, SEXP maxiterSEXP, SEXP toleranceSEXP) {
BEGIN_RCPP
    Rcpp::RObject rcpp_result_gen;
    Rcpp::RNGScope rcpp_rngScope_gen;
    Rcpp::traits::input_parameter< arma::mat& >::type X(XSEXP);
    Rcpp::traits::input_parameter< const int >::type k(kSEXP);
    Rcpp::traits::input_parameter< const int >::type maxiter(maxiterSEXP);
    Rcpp::traits::input_parameter< const double >::type tolerance(toleranceSEXP);
    rcpp_result_gen = Rcpp::wrap(method_fa(X, k, maxiter, tolerance));
    return rcpp_result_gen;
END_RCPP
}
// method_lpp
Rcpp::List method_lpp(arma::mat& X, arma::mat& W);
RcppExport SEXP _Rdimtools_method_lpp(SEXP XSEXP, SEXP WSEXP) {
BEGIN_RCPP
    Rcpp::RObject rcpp_result_gen;
    Rcpp::RNGScope rcpp_rngScope_gen;
    Rcpp::traits::input_parameter< arma::mat& >::type X(XSEXP);
    Rcpp::traits::input_parameter< arma::mat& >::type W(WSEXP);
    rcpp_result_gen = Rcpp::wrap(method_lpp(X, W));
    return rcpp_result_gen;
END_RCPP
}
// method_npe
Rcpp::List method_npe(arma::mat& X, arma::mat& W);
RcppExport SEXP _Rdimtools_method_npe(SEXP XSEXP, SEXP WSEXP) {
BEGIN_RCPP
    Rcpp::RObject rcpp_result_gen;
    Rcpp::RNGScope rcpp_rngScope_gen;
    Rcpp::traits::input_parameter< arma::mat& >::type X(XSEXP);
    Rcpp::traits::input_parameter< arma::mat& >::type W(WSEXP);
    rcpp_result_gen = Rcpp::wrap(method_npe(X, W));
    return rcpp_result_gen;
END_RCPP
}
// method_sne
arma::mat method_sne(arma::mat& P, const int ndim, const double eta, const int maxiter, double jitter, double decay, const double momentum);
RcppExport SEXP _Rdimtools_method_sne(SEXP PSEXP, SEXP ndimSEXP, SEXP etaSEXP, SEXP maxiterSEXP, SEXP jitterSEXP, SEXP decaySEXP, SEXP momentumSEXP) {
BEGIN_RCPP
    Rcpp::RObject rcpp_result_gen;
    Rcpp::RNGScope rcpp_rngScope_gen;
    Rcpp::traits::input_parameter< arma::mat& >::type P(PSEXP);
    Rcpp::traits::input_parameter< const int >::type ndim(ndimSEXP);
    Rcpp::traits::input_parameter< const double >::type eta(etaSEXP);
    Rcpp::traits::input_parameter< const int >::type maxiter(maxiterSEXP);
    Rcpp::traits::input_parameter< double >::type jitter(jitterSEXP);
    Rcpp::traits::input_parameter< double >::type decay(decaySEXP);
    Rcpp::traits::input_parameter< const double >::type momentum(momentumSEXP);
    rcpp_result_gen = Rcpp::wrap(method_sne(P, ndim, eta, maxiter, jitter, decay, momentum));
    return rcpp_result_gen;
END_RCPP
}
// method_snesym
arma::mat method_snesym(arma::mat& P, const int ndim, const double eta, const int maxiter, double jitter, double decay, const double momentum);
RcppExport SEXP _Rdimtools_method_snesym(SEXP PSEXP, SEXP ndimSEXP, SEXP etaSEXP, SEXP maxiterSEXP, SEXP jitterSEXP, SEXP decaySEXP, SEXP momentumSEXP) {
BEGIN_RCPP
    Rcpp::RObject rcpp_result_gen;
    Rcpp::RNGScope rcpp_rngScope_gen;
    Rcpp::traits::input_parameter< arma::mat& >::type P(PSEXP);
    Rcpp::traits::input_parameter< const int >::type ndim(ndimSEXP);
    Rcpp::traits::input_parameter< const double >::type eta(etaSEXP);
    Rcpp::traits::input_parameter< const int >::type maxiter(maxiterSEXP);
    Rcpp::traits::input_parameter< double >::type jitter(jitterSEXP);
    Rcpp::traits::input_parameter< double >::type decay(decaySEXP);
    Rcpp::traits::input_parameter< const double >::type momentum(momentumSEXP);
    rcpp_result_gen = Rcpp::wrap(method_snesym(P, ndim, eta, maxiter, jitter, decay, momentum));
    return rcpp_result_gen;
END_RCPP
}
// method_tsne
arma::mat method_tsne(arma::mat& P, const int ndim, const double eta, const int maxiter, double jitter, double decay, const double momentum);
RcppExport SEXP _Rdimtools_method_tsne(SEXP PSEXP, SEXP ndimSEXP, SEXP etaSEXP, SEXP maxiterSEXP, SEXP jitterSEXP, SEXP decaySEXP, SEXP momentumSEXP) {
BEGIN_RCPP
    Rcpp::RObject rcpp_result_gen;
    Rcpp::RNGScope rcpp_rngScope_gen;
    Rcpp::traits::input_parameter< arma::mat& >::type P(PSEXP);
    Rcpp::traits::input_parameter< const int >::type ndim(ndimSEXP);
    Rcpp::traits::input_parameter< const double >::type eta(etaSEXP);
    Rcpp::traits::input_parameter< const int >::type maxiter(maxiterSEXP);
    Rcpp::traits::input_parameter< double >::type jitter(jitterSEXP);
    Rcpp::traits::input_parameter< double >::type decay(decaySEXP);
    Rcpp::traits::input_parameter< const double >::type momentum(momentumSEXP);
    rcpp_result_gen = Rcpp::wrap(method_tsne(P, ndim, eta, maxiter, jitter, decay, momentum));
    return rcpp_result_gen;
END_RCPP
}
// method_eigenmaps
Rcpp::List method_eigenmaps(arma::mat& W);
RcppExport SEXP _Rdimtools_method_eigenmaps(SEXP WSEXP) {
BEGIN_RCPP
    Rcpp::RObject rcpp_result_gen;
    Rcpp::RNGScope rcpp_rngScope_gen;
    Rcpp::traits::input_parameter< arma::mat& >::type W(WSEXP);
    rcpp_result_gen = Rcpp::wrap(method_eigenmaps(W));
    return rcpp_result_gen;
END_RCPP
}
// method_sammon
arma::mat method_sammon(arma::mat& X, arma::mat& Yinit);
RcppExport SEXP _Rdimtools_method_sammon(SEXP XSEXP, SEXP YinitSEXP) {
BEGIN_RCPP
    Rcpp::RObject rcpp_result_gen;
    Rcpp::RNGScope rcpp_rngScope_gen;
    Rcpp::traits::input_parameter< arma::mat& >::type X(XSEXP);
    Rcpp::traits::input_parameter< arma::mat& >::type Yinit(YinitSEXP);
    rcpp_result_gen = Rcpp::wrap(method_sammon(X, Yinit));
    return rcpp_result_gen;
END_RCPP
}
// method_lleW
arma::vec method_lleW(arma::mat& mat_tgt, arma::vec& vec_tgt, const double regparam);
RcppExport SEXP _Rdimtools_method_lleW(SEXP mat_tgtSEXP, SEXP vec_tgtSEXP, SEXP regparamSEXP) {
BEGIN_RCPP
    Rcpp::RObject rcpp_result_gen;
    Rcpp::RNGScope rcpp_rngScope_gen;
    Rcpp::traits::input_parameter< arma::mat& >::type mat_tgt(mat_tgtSEXP);
    Rcpp::traits::input_parameter< arma::vec& >::type vec_tgt(vec_tgtSEXP);
    Rcpp::traits::input_parameter< const double >::type regparam(regparamSEXP);
    rcpp_result_gen = Rcpp::wrap(method_lleW(mat_tgt, vec_tgt, regparam));
    return rcpp_result_gen;
END_RCPP
}
// method_lleWauto
Rcpp::List method_lleWauto(arma::mat& mat_tgt, arma::vec& vec_tgt);
RcppExport SEXP _Rdimtools_method_lleWauto(SEXP mat_tgtSEXP, SEXP vec_tgtSEXP) {
BEGIN_RCPP
    Rcpp::RObject rcpp_result_gen;
    Rcpp::RNGScope rcpp_rngScope_gen;
    Rcpp::traits::input_parameter< arma::mat& >::type mat_tgt(mat_tgtSEXP);
    Rcpp::traits::input_parameter< arma::vec& >::type vec_tgt(vec_tgtSEXP);
    rcpp_result_gen = Rcpp::wrap(method_lleWauto(mat_tgt, vec_tgt));
    return rcpp_result_gen;
END_RCPP
}
// method_lleM
Rcpp::List method_lleM(arma::mat& W);
RcppExport SEXP _Rdimtools_method_lleM(SEXP WSEXP) {
BEGIN_RCPP
    Rcpp::RObject rcpp_result_gen;
    Rcpp::RNGScope rcpp_rngScope_gen;
    Rcpp::traits::input_parameter< arma::mat& >::type W(WSEXP);
    rcpp_result_gen = Rcpp::wrap(method_lleM(W));
    return rcpp_result_gen;
END_RCPP
}

static const R_CallMethodDef CallEntries[] = {
    {"_Rdimtools_aux_preprocess", (DL_FUNC) &_Rdimtools_aux_preprocess, 2},
    {"_Rdimtools_aux_perplexity", (DL_FUNC) &_Rdimtools_aux_perplexity, 2},
    {"_Rdimtools_aux_shortestpath", (DL_FUNC) &_Rdimtools_aux_shortestpath, 1},
    {"_Rdimtools_aux_landmarkMaxMin", (DL_FUNC) &_Rdimtools_aux_landmarkMaxMin, 3},
    {"_Rdimtools_aux_kernelcov", (DL_FUNC) &_Rdimtools_aux_kernelcov, 4},
    {"_Rdimtools_aux_eigendecomposition", (DL_FUNC) &_Rdimtools_aux_eigendecomposition, 1},
    {"_Rdimtools_aux_minmax", (DL_FUNC) &_Rdimtools_aux_minmax, 2},
    {"_Rdimtools_methods_boxcount", (DL_FUNC) &_Rdimtools_methods_boxcount, 3},
    {"_Rdimtools_method_pca", (DL_FUNC) &_Rdimtools_method_pca, 1},
    {"_Rdimtools_method_mds", (DL_FUNC) &_Rdimtools_method_mds, 1},
    {"_Rdimtools_method_mdsD", (DL_FUNC) &_Rdimtools_method_mdsD, 1},
    {"_Rdimtools_method_ica", (DL_FUNC) &_Rdimtools_method_ica, 7},
    {"_Rdimtools_method_rpgauss", (DL_FUNC) &_Rdimtools_method_rpgauss, 2},
    {"_Rdimtools_method_fa", (DL_FUNC) &_Rdimtools_method_fa, 4},
    {"_Rdimtools_method_lpp", (DL_FUNC) &_Rdimtools_method_lpp, 2},
    {"_Rdimtools_method_npe", (DL_FUNC) &_Rdimtools_method_npe, 2},
    {"_Rdimtools_method_sne", (DL_FUNC) &_Rdimtools_method_sne, 7},
    {"_Rdimtools_method_snesym", (DL_FUNC) &_Rdimtools_method_snesym, 7},
    {"_Rdimtools_method_tsne", (DL_FUNC) &_Rdimtools_method_tsne, 7},
    {"_Rdimtools_method_eigenmaps", (DL_FUNC) &_Rdimtools_method_eigenmaps, 1},
    {"_Rdimtools_method_sammon", (DL_FUNC) &_Rdimtools_method_sammon, 2},
    {"_Rdimtools_method_lleW", (DL_FUNC) &_Rdimtools_method_lleW, 3},
    {"_Rdimtools_method_lleWauto", (DL_FUNC) &_Rdimtools_method_lleWauto, 2},
    {"_Rdimtools_method_lleM", (DL_FUNC) &_Rdimtools_method_lleM, 1},
    {NULL, NULL, 0}
};

RcppExport void R_init_Rdimtools(DllInfo *dll) {
    R_registerRoutines(dll, NULL, CallEntries, NULL, NULL);
    R_useDynamicSymbols(dll, FALSE);
}
