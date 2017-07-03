#' @title Correlacion de Pearson
#' @description Calcula la correlacion de Pearson entre dos variables de tipo continuas,
#'    entregando una interpretacion de los resultados obtenidos y entregando una grafica
#'    que presenta la dispercion entre las variables y la recta que se obtendria al aplicar
#'    un metodo de Regresion Lineal Simple.
#' @param base Nombre de la base de datos.
#' @param x Nombre variable X.
#' @param y Nombre variable Y.
#' @references Casella, G. (1990). Statistical Inference. Duxburry Press.
#' @examples
#' data("albahaca")
#' corr.pearson(albahaca,"n.riegos","produccion")
#' @export
#'
corr.pearson <- function(base, x, y) {
  x1 <- stats::na.omit(base[[x]])
  y1 <- stats::na.omit(base[[y]])
  if (length(x1) == length(y1)) {
    p <- (covarianza(x1, y1) / (std(x1) * std(y1)))
    print(p)
    if (p < 0) {
      print("Asosiacion Lineal Negativa")
    }
    else{
      if (p > 0) {
        print("Asosiacion Lineal Positiva")
      }
      else{
        print("No existe asosiacion lineal")
      }
    }
    A<-(ggplot2::ggplot(base, ggplot2::aes(x = x1, y = y1)) +
          ggplot2::geom_point(shape = 1, colour = "mediumpurple1") +
          ggplot2::geom_smooth(method = stats::lm, colour = "mediumpurple4"))
    print(A)
  }
  else {
    print("La variables poseen tamanos distintos")
  }
}

