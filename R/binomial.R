#' @title Simulacion Variable Aleatoria Binomial
#' @description Genera valores aleatorios provenienes de una distribucion Binomial.
#' @param m Numero de valores a generar.
#' @param n Numero de ensayos.
#' @param p Probabilidad de exito.
#' @examples
#' sim.binomial(100,30,0.4)
#' @references Ross, S.M. (1999) Simulacion. Prentice Hall.
#' @export
#'
sim.binomial<-function(m,n,p)
{x<-rep(0,m)
j<-1
while(j<=m)
{U<-stats::runif(1)
i<-0
c<-(p/(1-p))
P<-((1-p)^n)
F<-P
while(F<U)
{if(U<F)
{x<-i}
  else
  {P<-(((c*(n-i))/(i+1))*P)
  F<-F+P
  i<-i+1}}
x[j]<-i
j<-j+1}
print(x)
k<-seq(0,n+1)
graphics::hist(x,freq=FALSE,main="Valores Aleatorios Binomiales Generados v/s Densidad Teorica",
               ylab="Densidad",xlab="",col="seashell1")
graphics::lines(k,stats::dbinom(k,n,p),col=2,lty =2,lwd = 2)

}
