data <- (mtcars)
# filter data based on a condition
filter_data <- function(data, condition) {
  subset(data, condition)
}
# summary statistics for numeric variables
compute_summary_stats <- function(data) {
  summary(data)
}
# boxplot
plot_boxplot <- function(data, x, y) {
  boxplot(y ~ x, data = data)
}
boxplot(mpg ~ cyl, data = mtcars,
        xlab = "Number of Cylinders",
        ylab = "Miles per Gallon",
        main = "Boxplot of MPG by Number of Cylinders")
# scatter plot matrix
plot_scatter_matrix <- function(data) {
  pairs(data)
}
pairs(mtcars)
# chi-squared test for independence
perform_chi_squared_test <- function(data, x, y) {
  chisq.test(data[[x]], data[[y]])
}
# generalized linear model (GLM)
fit_glm <- function(formula, data) {
  glm(formula, data = data)
}
model <- fit_glm(mpg ~ wt + disp, data = mtcars)
summary(model)
install.packages("roxygen2")
library(roxygen2)
#' Filter data based on a condition
#'
#' This function filters data based on a specified condition.
#' @param data A data frame
#' @param condition A logical condition to filter data
#' @return Filtered data frame
#' @examples
#' filter_data(mtcars, mpg > 20)
filter_data <- function(data, condition) {
  subset(data, condition)
}
#' Compute summary statistics for numeric variables
#'
#' This function computes summary statistics for numeric variables in a data frame.
#' @param data A data frame
#' @return Summary statistics
#' @examples
#' compute_summary_stats(mtcars)
compute_summary_stats <- function(data) {
  summary(data)
}
roxygen2::roxygenize()
