#' Calculate the probabilities of each category given X
#' @param X Pattern from which we have to decide a category. It is a set of measurements represented by a p-dimensional vector
#' @param nn An already trained probabilistic neural network
#' @export
category.probs <- function(nn, X) {
    results <- vector()
    for(category in nn$categories) {
        Xa <- nn$set[nn$set[,nn$category.column] == category,]
        Xa <- as.matrix(Xa[,-nn$category.column])
        results <- c(results, fA(Xa, X, nn$sigma))
    }
    probs <- results / sum(results)
    names(probs) <- nn$categories
    return(probs)
}

#' Decide the category of X
#' @param of.measurement A vector describing a new observation
#' @param given.model A probabilistic neural network already trained
#' @export
guess.category <- function(of.measurement, given.model) {
    probs <- category.probs(given.model, of.measurement)
    if(is.na(probs[1])) return(NA)
    category <- names(probs[probs == max(probs)])
    return(category)
}
