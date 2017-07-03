#' @title Minimo
#' @description Encuenta el minimo valor de una variable continua.
#' @param x Nombre de la variable.
#' @export
minimo<-function(x){
  x<-stats::na.omit(x)
  n<-length(x)
  i<-2
  min<-x[1]
  while(i<=n){
    if(x[i]<=min){min<-x[i]}
    i<-i+1}
  return(min)
}
