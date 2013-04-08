#' Training the PNN
#' @param set Data frame with the training set of all categories: one column should have the category and others the associated measurements
#' @param category.column The field number of the factor
#' @param nn An empty probabilistic neural network
#' @export
learn <- function(set, category.column=1, nn) {
    if(missing(set)) stop("Set is missing!")
    if(missing(nn)) nn <- create.pnn()
    if(is.null(nn$set)) {
        nn$category.column <- category.column
        nn$set <- set
    } else {
        nn$set <- rbind(nn$set, set)
    }
    nn$set[,nn$category.column] <- factor(nn$set[,nn$category.column])
    nn$categories <- levels(nn$set[,nn$category.column])
    nn$k <- length(set[1,]) - 1
    nn$n <- length(set[,1])
    # Scale
    return(nn)
}
