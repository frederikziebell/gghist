#' Plot the histogram of a numeric vector
#' @description This is a wrapper around \code{ggplot2::geom_histogram()} to display the histogram of a numeric vector
#' @param x A numeric vector
#' @param ... Other arguments passed on to geom_histogram()
#' @return A ggplot object
#' @examples
#' x <- rnorm(100)
#' gghist(x, bins = 20)
#' @export
gghist <- function(x, ...){

  if(!is.numeric(x)){
    stop("Vector x must be numeric.")
  }

  ggplot(data.frame(x), aes(x)) +
    geom_histogram(...)
}
