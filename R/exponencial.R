#' @title Simulacion Variable Aleatoria Exponencial
#' @description Genera valores aleatorios provenienes de una distribucion Exponencial
#'    junto con un histograma en el cual se comparan los valores simulados con la densidad
#'    teorica de la variable aleatoria simulada.
#' @param n Numero de valores aleatorios a generar.
#' @param L Parametro Lambda.
#' @examples
#' sim.exponencial(100,7)
#' @references Ross, S.M. (1999) Simulacion. Prentice Hall.
#' @export
sim.exponencial<-function(n,L)
{y<-rep(1, n)
j<-1
t<-(1/L)
while(j<= n)
{u<-stats::runif(1)
y[j]<-(-L*(log(1-u)))
j<-j+1}
print(c("Datos generados"))
print(y)
graphics::hist(y, prob = TRUE,
               main="Valores Aleatorios Exponenciales Generados v/s Densidad Teorica",
               ylab="Densidad",xlab="",col="seashell1")
x<-seq(0,max(y))
graphics::curve(stats::dexp(x, rate =t), col = 2, lty = 2, lwd = 2,ylim=range(0,1) ,add = TRUE)}
