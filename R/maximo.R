#' @title Maximo
#' @description Encuenta el maximo valor de una variable continua.
#' @param x Nombre de la variable.
#' @export
maximo<-function(x){
   x<-stats::na.omit(x)
   n<-length(x)
   i<-2
   max<-x[1]
   while(i<=n){
      if(x[i]>max){max<-x[i]}
      i<-i+1}
   return(max)
}
