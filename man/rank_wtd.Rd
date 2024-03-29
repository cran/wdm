% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/rank_wtd.R
\name{rank_wtd}
\alias{rank_wtd}
\title{Computing weighted ranks}
\usage{
rank_wtd(x, weights = numeric(), ties_method = "average")
}
\arguments{
\item{x}{a numeric vector.}

\item{weights}{a vector of weights (same length as \code{x}).}

\item{ties_method}{Indicates how to treat ties; same as in R, see
https://stat.ethz.ch/R-manual/R-devel/library/base/html/rank.html.}
}
\value{
a vector of ranks.
}
\description{
The weighted rank of \eqn{X_i} among \eqn{X_1, \dots, X_n} with weights
\eqn{w_1, \dots, w_n} is defined as
\deqn{\frac 1 n \sum_{j = 1}^n w_i 1[X_j \le X_i].}
}
\examples{
x <- rnorm(100)
w <- rexp(100)
rank(x)
rank_wtd(x, w)
}
