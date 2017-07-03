#' @title Coeficiente de Variacion
#' @description Calcula el Coeficiente de Variacion de una variable de tipo continua, este relaciona la
#'     media y la variabilidad de la variable.
#' @param x Nombre de la variable.
#' @references Casella, G. (1990). Statistical Inference. Duxburry Press.
#' @examples
#' data("albahaca")
#' coeficiente.variacion(albahaca$produccion)
#' @export
#'
coeficiente.variacion<-function(x){
  y<- stats::na.omit(x)
  c<-(std(y)/abs(promedio(y)))
  return(c)
}

