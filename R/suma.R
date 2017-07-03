#' @title Suma
#' @description Calcula la suma de una variable continua.
#' @param x Nombre de la variable.
#' @examples
#' data("albahaca")
#' suma(albahaca$produccion)
#' @export
suma<-function(x){
  x<-stats::na.omit(x)
  n<-length(x)
  s<-0
  i<-1
  while (i<=n){
    s<-s+x[i]
    i<-i+1
  }
  return(s)}
