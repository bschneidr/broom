% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/orcutt-tidiers.R
\name{tidy.orcutt}
\alias{tidy.orcutt}
\alias{orcutt_tidiers}
\title{Tidy a(n) orcutt object}
\usage{
\method{tidy}{orcutt}(x, ...)
}
\arguments{
\item{x}{An \code{orcutt} object returned from \code{\link[orcutt:cochrane.orcutt]{orcutt::cochrane.orcutt()}}.}

\item{...}{Arguments passed on to \code{tidy.lm}
\describe{
  \item{x}{An \code{lm} object created by \code{\link[stats:lm]{stats::lm()}}.}
  \item{conf.int}{Logical indicating whether or not to include a confidence
interval in the tidied output. Defaults to \code{FALSE}.}
  \item{conf.level}{The confidence level to use for the confidence interval
if \code{conf.int = TRUE}. Must be strictly greater than 0 and less than 1.
Defaults to 0.95, which corresponds to a 95 percent confidence interval.}
  \item{quick}{Logical indiciating if the only the \code{term} and \code{estimate}
columns should be returned. Often useful to avoid time consuming
covariance and standard error calculations. Defaults to \code{FALSE}.}
  \item{exponentiate}{Logical indicating whether or not to exponentiate the
the coefficient estimates. This is typical for logistic and multinomial
regressions, but a bad idea if there is no log or logit link. Defaults
to \code{FALSE}.}
}}
}
\value{
\code{tidy} returns the same information as \code{\link[=tidy.lm]{tidy.lm()}},
though without confidence interval options.
}
\description{
This method wraps \code{\link[=tidy.lm]{tidy.lm()}}.
}
\examples{

reg <- lm(mpg ~ wt + qsec + disp, mtcars)
tidy(reg)

if (require("orcutt", quietly = TRUE)) {
  co <- cochrane.orcutt(reg)
  co

  tidy(co)
  glance(co)
}

}
\seealso{
\code{\link[=tidy]{tidy()}}, \code{\link[=tidy.lm]{tidy.lm()}}

\code{\link[orcutt:cochrane.orcutt]{orcutt::cochrane.orcutt()}}

Other orcutt tidiers: \code{\link{glance.orcutt}}
}
\concept{orcutt tidiers}
