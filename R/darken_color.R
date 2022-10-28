#' Darken colors by a desired amount
#'
#' @param color Color(s) to darken.
#' @param factor Factor to darken by.
#' @export
#' @examples
#' darken_color('blue', factor = 1.5)
#' darken_color(arcadia.pal(n = 3, name = 'Neutral'))

darken_color <- function(color, factor=1.4){
  col <- col2rgb(color)
  col <- col/factor
  col <- rgb(t(col), maxColorValue=255)
  col
}