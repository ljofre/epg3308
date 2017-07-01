#' @title Simulacion Variable Aleatoria Geometrica
#' @description Genera valores aleatorios provenienes de una distribucion Geometrica.
#' @param n Numero de valores aleatorioas a generar.
#' @param p Probabilidad de exito.
#' @examples
#' sim.geometrica(100,0.4)
#' @references Ross, S.M. (1999) Simulacion. Prentice Hall.
#' @export
#'
sim.geometrica<-function(n,p)
{x<-rep(0,n)
i<-1
B<-log(1-p)
while (i<=n){
  A<-log(stats::runif(1))
  x[i]<-round((A/B))
  i<-i+1}
print(x)
graphics::hist(x,freq=FALSE,main="Valores Aleatorios Geometricos Generados v/s Densidad Teorica",
               ylab="Densidad",xlab="",col="seashell1")
z<-seq(0,n)
graphics::lines(z,stats::dgeom(z,p),col=2,lty =2,lwd = 2)
}
