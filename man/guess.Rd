\name{guess}
\alias{guess}
\title{Guess}
\usage{
  guess(nn, X)
}
\arguments{
  \item{nn}{A trained and smoothed Probabilistic neural
  network.}

  \item{X}{A vector describing a new observation.}
}
\value{
  A \code{list} of the guessed category and the
  probabilities of each category.
}
\description{
  Infers the category of a new observation.
}
\details{
  Given an already trained and smoothed Probabilistic
  neural network, the function \code{guess} gives the
  category with the highest probability, and the
  probabilities of each category.
}
\examples{
library(pnn)
data(norms)
pnn <- learn(norms)
pnn <- smooth(pnn, sigma=0.8)
guess(pnn, c(1,1))
guess(pnn, c(1,1))$category
guess(pnn, c(1,1))$probabilities
guess(pnn, c(2,1))
guess(pnn, c(1.5,1))
}
\seealso{
  \code{\link{pnn-package}}, \code{\link{learn}},
  \code{\link{smooth}}, \code{\link{perf}},
  \code{\link{norms}}
}

