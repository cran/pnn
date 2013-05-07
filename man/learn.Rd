\name{learn}
\alias{learn}
\title{Learn}
\usage{
  learn(set, nn, category.column = 1)
}
\arguments{
  \item{set}{Data frame representing the training set. The
  first column is used to define the category of each
  observation (set \code{category.column} if it is not the
  case).}

  \item{nn}{A Probabilistic neural network with or without
  training.}

  \item{category.column}{The field number of the category
  (1 by default).}
}
\value{
  A trained Probabilist neural network.
}
\description{
  Create or update a Probabilist neural network.
}
\details{
  The function \code{learn} aims to create a new
  Probabilist neural network with a training set, or update
  the training set of an already trained Probabilist neural
  network. It sets the parameters \code{model}, \code{set},
  \code{category.column}, \code{categories}, \code{k} and
  \code{n} of the neural network.
}
\examples{
library(pnn)
data(norms)
pnn <- learn(norms)
pnn$model
pnn$set[1:10,]
pnn$category.column
pnn$categories
pnn$k
pnn$n
}
\seealso{
  \code{\link{pnn-package}}, \code{\link{smooth}},
  \code{\link{perf}}, \code{\link{guess}},
  \code{\link{norms}}
}

