#' @title Promedio
#' @description Encuenta el promedio de una variable de tipo continua.
#' @param x Nombre de la variable.
#' @references Casella, G. (1990). Statistical Inference. Duxburry Press.
#' @examples
#' data("albahaca")
#' promedio(albahaca$produccion)
#' @export
promedio<-function(x){
  x<-stats::na.omit(x)
  n<-length(x)
  S<-suma(x)
  return(S/n)}
