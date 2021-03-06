% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/stats-time-series-tidiers.R
\name{tidy.spec}
\alias{tidy.spec}
\title{Tidy a(n) spec object}
\usage{
\method{tidy}{spec}(x, ...)
}
\arguments{
\item{x}{A \code{spec} object created by \code{\link[stats:spectrum]{stats::spectrum()}}.}

\item{...}{Additional arguments. Not used. Needed to match generic
signature only. \strong{Cautionary note:} Misspelled arguments will be
absorbed in \code{...}, where they will be ignored. If the misspelled
argument has a default value, the default value will be used.
For example, if you pass \code{conf.lvel = 0.9}, all computation will
proceed using \code{conf.level = 0.95}. Additionally, if you pass
\code{newdata = my_tibble} to an \code{\link[=augment]{augment()}} method that does not
accept a \code{newdata} argument, it will use the default value for
the \code{data} argument.}
}
\value{
A \link[tibble:tibble]{tibble::tibble} with two columns: \code{freq} and \code{spec}.
}
\description{
Tidy summarizes information about the components of a model.
A model component might be a single term in a regression, a single
hypothesis, a cluster, or a class. Exactly what tidy considers to be a
model component varies cross models but is usually self-evident.
If a model has several distinct types of components, you will need to
specify which components to return.
}
\examples{

spc <- spectrum(lh)
tidy(spc)

library(ggplot2)
ggplot(tidy(spc), aes(freq, spec)) +
  geom_line()

}
\seealso{
\code{\link[=tidy]{tidy()}}, \code{\link[stats:spectrum]{stats::spectrum()}}

Other time series tidiers: \code{\link{tidy.acf}},
  \code{\link{tidy.ts}}, \code{\link{tidy.zoo}}
}
\concept{time series tidiers}
