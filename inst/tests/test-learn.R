context("Learn")

test_that("Training set", { 
    expect_that(learn(), throws_error("Set is missing"))
    data("skin", package="pnn")
    m <- learn(set=skin, category.column=4)
    expect_that(m$category.column, equals(4))
    expect_that(m$categories, equals(c("0","1")))
    expect_that(m$set[,-4], equals(skin[,-4]))
    expect_that(length(m$set[,1]), equals(245057))
    n <- learn(set=skin, category.column=4, nn=m)
    expect_that(length(n$set[,1]), equals(490114)) 
})