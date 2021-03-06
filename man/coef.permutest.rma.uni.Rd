\name{coef.permutest.rma.uni}
\alias{coef.permutest.rma.uni}
\title{Extract the Model Coefficient Table from 'permutest.rma.uni' Objects}
\description{
   The function extracts the estimated model coefficients, corresponding standard errors, test statistics, p-values (based on the permutation tests), and confidence interval bounds from objects of class \code{"permutest.rma.uni"}.
}
\usage{
\method{coef}{permutest.rma.uni}(object, \dots)
}
\arguments{
   \item{object}{an object of class \code{"permutest.rma.uni"}.}
   \item{\dots}{other arguments.}
}
\value{
   A data frame with the following elements:
   \item{estimate}{estimated model coefficient(s).}
   \item{se}{corresponding standard error(s).}
   \item{zval}{corresponding test statistic(s).}
   \item{pval}{p-value(s) based on the permutation test(s).}
   \item{ci.lb}{lower bound of the (permutation-based) confidence interval(s).}
   \item{ci.ub}{upper bound of the (permutation-based) confidence interval(s).}

   When the model was fitted with \code{test="t"} or \code{test="knha"}, then \code{zval} is called \code{tval} in the data frame that is returned by the function.
}
\author{
   Wolfgang Viechtbauer \email{wvb@metafor-project.org} \url{http://www.metafor-project.org}
}
\references{
   Viechtbauer, W. (2010). Conducting meta-analyses in R with the metafor package. \emph{Journal of Statistical Software}, \bold{36}(3), 1--48. \verb{https://doi.org/10.18637/jss.v036.i03}
}
\seealso{
   \code{\link{permutest.rma.uni}}, \code{\link{rma.uni}}
}
\examples{
### meta-analysis of the log risk ratios using a mixed-effects model
### with two moderators (absolute latitude and publication year)
res <- rma(measure="RR", ai=tpos, bi=tneg, ci=cpos, di=cneg,
           mods = ~ ablat + year, data=dat.bcg)

### permutation test
\dontrun{
pres <- permutest(res)
coef(pres)}
}
\keyword{models}
