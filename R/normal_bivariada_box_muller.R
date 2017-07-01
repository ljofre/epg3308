#' @title Simulacion Variable Aleatoria Normal Bivariada via Box Muller
#' @description Genera valores aleatorios simulados que siguen una distribucion Normal con
#'    media cero y varianza uno, estos valores se obtienen aplicando el metodo de Box-Muller.
#' @param n Numero de valores aleatorios a generar.
#' @examples
#' snormalBM(100)
#' snormalBM(200)
#' @references Ross, S.M. (1999) Simulacion. Prentice Hall
#' @export
snormalBM<-function(n)
{
  x<-rep(0,n)
  y<-rep(0,n)
  j<-0
  while(j<=n)
  {
    u<-rep(0,2)
    u[1]<-stats::runif(1)
    u[2]<-stats::runif(1)
    x[j]<-sqrt(-2*log(u[1]))*cos(2*pi*u[2])
    y[j]<-sqrt(-2*log(u[1]))*sin(2*pi*u[2])
    j<-j+1
  }
  print(c("valores generados de X"))
  print(x)
  print(c("valores generados de Y"))
  print(y)
  x<-sort(x)
  y<-sort(y)
  f<-function(x,y){p<-(1/2*pi)*exp(-(1/2)*((x^2)+(y^2)))}
  z<-outer(x,y,f)
  graphics::persp(x, y, z, theta = 40, phi = 40, expand = 0.5, col ="deepskyblue3" ,
        border="deepskyblue4",
        ltheta = 100, shade = 0.80, ticktype = "detailed",
        xlab = "x", ylab = "Y", zlab = "z",
        main="Grafico de Perspectiva")
}
