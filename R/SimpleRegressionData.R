#' Generates sample data for a simple regression, y = alpha + beta x + epsilon with control over var(x) and var(epsilon)
#'
#' @param alpha intercept of regression.
#' @param beta slope coefficient.
#' @param rangex range of the uniform normal that will be used to generate x variables in the form c(max,min).
#' @param sigma standard deviation of the error term
#' @param N Number of observations
#' @return Data.frame with Y, X and er.
#' @examples
#' SimpleRegressionData(N =20)
#' SimpleRegressionData(alpha = 2, beta = -2, rangex= c(-10, 20), sigma = 3, N =100)

SimpleRegressionData <- function(alpha = 1, beta = 5, rangex = c(0, 10), sigma = 1, N = 100){
  ret <- data.frame(x = runif(N, rangex[1], rangex[2]),
                    er = rnorm(N, 0, sigma))
  ret$Y <- alpha + (beta * ret$x) + ret$er
  ret
}
