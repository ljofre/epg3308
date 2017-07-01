#' @title Promedio
#' @description Encuenta el promedio de una variable de tipo continua.
#' @param x Nombre de la variable.
#' @references Casella, G. (1990). Statistical Inference. Duxburry Press.
#' @examples
#' y<-rnorm(100, mean = 6, sd = 5)
#' promedio(y)
#' @export
promedio<-function(x){
  x<-stats::na.omit(x)
  n<-length(x)
  sum<-0
  i<-1
  while (i<=n){
    sum<-sum+x[i]
    i<-i+1
  }
  return(sum/n)}
