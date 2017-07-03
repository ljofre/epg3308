#' @title Simulacion Variable Aleatoria Bernulli
#' @description Genera valores aleatorios provenienes de una distribucion Bernulli.
#' @param n Numero de valores aleatorios a generar.
#' @param p Probabilidad de exito.
#' @examples
#' sim.bernulli(100,0.4)
#' @references Ross, S.M. (1999) Simulacion. Prentice Hall.
#' @export
#'
sim.bernulli<-function(n,p)
{x<-rep(0,n)
i<-1
q<-1-p
while (i<=n){
  u<-(stats::runif(1))
  if(u<=1-p){x[i]=0}
  else{x[i]=1}
  i<-i+1}
print(x)
print("Porcentaje de unos")
print(suma(x)/n)
print("Porcentaje de ceros")
print(1-(suma(x)/n))}
