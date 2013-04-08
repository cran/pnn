context("Predict")

test_that("Without optimization", {
    a <- cbind(1,rnorm(10,1,1))
    b <- cbind(5,rnorm(10,5,1))
    trainset <- as.data.frame(rbind(a,b))
    pnn <- learn(set=trainset)
    pnn$sigma <- 0.3
    (res <- category.probs(nn=pnn, X=1))
    expect_that(length(res), equals(2))
    expect_that(as.vector(res[1] > 0.5), is_true())
    expect_that(guess.category(of=1, given.model=pnn), equals("1"))
})

test_that("Without optimization, with dataset", {
    data("skin", package="pnn")
    pnn <- learn(set=skin, category.column=4)
    pnn$sigma <- 0.3
    X <- matrix(c(74,125,123), ncol=3)
    (res <- category.probs(nn=pnn, X=X))
    expect_that(length(res), equals(2))
    expect_that(as.vector(res[1] > 0.5), is_true())
    expect_that(guess.category(of.measurement=X, given.model=pnn), equals("0"))
})