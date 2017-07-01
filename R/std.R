#' @title Desviacion Estandar
#' @description Calcula la Desviacion Estandar de una variable de tipo continua.
#' @param x Nombre de la variable.
#' @references Casella, G. (1990). Statistical Inference. Duxburry Press.
#' @export
std<-function(x){
  x<- stats::na.omit(x)
  prom<-promedio(x)
  n<-length(x)
  i<-1
  S<-0
  while(i<=n){
    S<-S+((x[i]-prom)^2)
    i<-i+1
  }
  S<-sqrt(S/(n-1))
  return(S)
}
