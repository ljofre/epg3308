#' @title Simulacion Variables Aleatorias Hipergeometricas
#' @description Genera valores aleatorios provenienes de una distribucion Hipergeometrica.
#' @param t Numero de valores aleatorios a generar.
#' @param N Numero de elementos en la poblacion.
#' @param N1 Numero de elementos en la poblacion que pertenecen a la categoria deseada.
#' @param n Tamaño muestral.
#' @examples
#' sim.hipergeometrica(200,100,40,20)
#' @references Ross, S.M. (1999) Simulacion. Prentice Hall.
#' @export
#'
sim.hipergeometrica<-function(t,N,N1,n){
  x<-rep(0,t)
  j<-1
  while(j<=t)
  {i<-max(0,n+N1-N)
  U<-stats::runif(1)
  if (N-N1 > n )
  {
    D<-(choose(N1,i)*choose(N-N1,n-i))
    E<-(choose(N,n))
    P<-(D/E)
    F<-P
    while(F<U)
    { if(U<F)
    {x<-i}
      else
      { C<-(((N1-i)*(n-i))/((i+1)*(N-N1-n+i+1)))
      P<-((((N1-i)*(n-i))/((i+1)*(N-N1-n+i+1)))*P)
      F<-F+P
      i<-i+1 }
    }
  }
  else{NULL}
  x[j]<-i
  j<-j+1
  }
  print(x)
  graphics::hist(x,freq=FALSE,main="Valores Aleatorios Hipergeometricos Generados v/s Densidad Teorica",
                 ylab="Densidad",xlab="",col="seashell1")
  z<-seq(0,n+1)
  graphics::lines(z,stats::dhyper(z,N1,N-N1,n),col=2,lty =2,lwd = 2)
}


