#' @title Simulacion Variable Aleatoria Poisson
#' @description Genera valores aleatorios provenienes de una distribucion Poisson.
#' @param n Numero de valores aleatorios a generar.
#' @param L Parametro Lambda, el cual representa el numero de veces que se espera que ocurra el fenomeno durante un intervalo de tiempo.
#' @examples
#' sim.poisson(100,5)
#' @references Ross, S.M. (1999) Simulacion. Prentice Hall.
#' @export
#'
sim.poisson<-function(n,L)
{y<-rep(0,n)
j<-1
while(j<=n)
{U<-stats::runif(1)
i<-0
p<-exp(-L)
F<-p
while(F<U)
{if(U<F)
{y<-i}
  else
  {p<-((L/(i+1))*p)
  F<-F+p
  i<-i+1}}
y[j]<-i
j<-j+1}
print(y)
graphics::hist(y,freq=FALSE,seq(min(y)-0.5,max(y)+0.5,by=1),
               main="Valores Aleatorios Poisson Generados v/s Densidad Teorica",
               ylab="Densidad",xlab="",col="seashell1")
z<-seq(0,n)
graphics::lines(z,stats::dpois(z,L),col=2,lty =2,lwd = 2)
}
