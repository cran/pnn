\name{learn}
\alias{learn}
\title{Training the PNN}
\usage{
  learn(set, category.column = 1, nn)
}
\arguments{
  \item{set}{Data frame with the training set of all
  categories: one column should have the category and
  others the associated measurements}

  \item{category.column}{The field number of the factor}

  \item{nn}{An empty probabilistic neural network}
}
\description{
  Training the PNN
}

