\name{perf}
\alias{perf}
\title{Perf}
\usage{
  perf(nn)
}
\arguments{
  \item{nn}{A trained and smoothed Probabilist neural
  network.}
}
\value{
  A probabilist neural network updated with its
  performance.
}
\description{
  Performance of a Probabilist neural network.
}
\details{
  The function \code{perf} uses a hold-out method. This
  method takes the training set used by the function
  \code{\link{learn}} and iterate over each observation
  trying to guess the current observation with a reduced
  training set (without the current observation).It
  generates: \itemize{ \item Two lists of \code{observed}
  and \code{guessed} values.  \item the following
  statistics: number of \code{success} and \code{fails}, a
  sucess rate (\code{success_rate}) and a \code{bic}
  indicator. }
}
\examples{
library(pnn)
data(norms)
pnn <- learn(norms)
pnn <- smooth(pnn, sigma=0.8)
pnn <- perf(pnn)
pnn$observed
pnn$guessed
pnn$success
pnn$fails
pnn$success_rate
pnn$bic
}
\seealso{
  \code{\link{pnn-package}}, \code{\link{learn}},
  \code{\link{smooth}}, \code{\link{guess}},
  \code{\link{norms}}
}

