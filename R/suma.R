#' @title Suma
#' @description Calcula la suma de una variable continua.
#' @param x Nombre de la variable.
#' @export
suma<-function(x){
  x<-stats::na.omit(x)
  n<-length(x)
  sum<-0
  i<-1
  while (i<=n){
    sum<-sum+x[i]
    i<-i+1
  }
  return(sum)}
