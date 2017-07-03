#' @title Simulacion Variable Aleatoria Normal Bivariada via Coordenadas Polares
#' @description Genera valores aleatorios simulados que siguen una distribucion Normal con
#'    media cero y varianza uno aplicando el metodo de Coordenadas Polares.
#' @param n Numero de valores aleatorios a generar.
#' @examples
#' snormalCP(100)
#' snormalCP(50)
#' @references Ross, S.M. (1999) Simulacion. Prentice Hall.
#' @export
#'
snormalCP<-function(n)
{
  x<-rep(0,n)
  y<-rep(0,n)
  j<-1
  while(j<=n)
  {
    u<-rep(0,2)
    u[1]<-stats::runif(1)
    u[2]<-stats::runif(1)
    v1<- 2*u[1]-1
    v2<-2*u[2]-1
    s <-v1^2 + v2^2
    while(s>1)
    {u<-rep(0,2)
    u[1]<-stats::runif(1)
    u[2]<-stats::runif(1)
    v1<- 2*u[1]-1
    v2<-2*u[2]-1
    s <-v1^2 + v2^2
    }
    xx<- sqrt((-2*log(s))/s)*v1
    yy<- sqrt((-2*log(s))/s)*v2
    x[j]<-xx
    y[j]<-yy
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
  graphics::persp(x, y, z, theta = 40, phi = 40, expand = 0.5,
                  col ="mediumpurple2",border="mediumpurple3",
                  ltheta = 100, shade = 0.80, ticktype = "detailed",
                  xlab = "x", ylab = "Y", zlab = "z", main="Grafico de Perspectiva")
}
