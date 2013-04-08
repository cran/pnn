#' Hold-out method
#' @param df A data-frame
hold_out <- function(df) {
    i <- 0
    imax <- length(df[,1])
    function() {
        i <<- i + 1
        if(i > imax) return(NA)
        one <- df[i,]
        rest <- df[-i,]
        return(list(one=one,rest=rest))
    }
}

#' Apply a function for each set
#learn and predict for X
#increment success


#' Apply a function at the end
#sum(success)

#' Apply a final function
#bic <- function(of=nn) {
#    for(X in nn$set)
#}
#fails = n - success
#BIC = n * ln (1/n*fails) + k * ln(n)