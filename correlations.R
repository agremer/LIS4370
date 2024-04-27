#' Calculate the correlation matrix
#'
#' This function calculates the correlation matrix of a data frame.
#'
#' @param data A data frame
#' @return A correlation matrix
#' @examples
#' data <- mtcars[, c("mpg", "disp", "hp", "drat")]
#' calculate_correlation(data)
calculate_correlation <- function(data) {
  cor(data)
}
#' Plot a histogram
#'
#' This function plots a histogram of numeric data.
#'
#' @param data Numeric data vector
#' @param title Title of the histogram
#' @examples
#' plot_histogram(mtcars$mpg, title = "Distribution of MPG")
plot_histogram <- function(data, title = "Histogram") {
  hist(data, main = title)
}
#' Perform linear regression
#'
#' This function performs linear regression.
#'
#' @param x Independent variable
#' @param y Dependent variable
#' @return Linear regression model
#' @examples
#' perform_regression(mtcars$mpg, mtcars$hp)
perform_regression <- function(x, y) {
  lm(y ~ x)
}
# Unit tests
test_that("calculate_correlation returns a correlation matrix", {
  data <- mtcars[, c("mpg", "disp", "hp", "drat")]
  expect_is(calculate_correlation(data), "matrix")
})
test_that("plot_histogram plots a histogram", {
  data <- mtcars$mpg
  expect_true(inherits(plot_histogram(data), "histogram"))
})
test_that("perform_regression performs linear regression", {
  model <- perform_regression(mtcars$mpg, mtcars$hp)
  expect_is(model, "lm")
})
