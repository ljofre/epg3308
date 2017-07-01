#' @title Coeficiente de Asimetria de Fisher
#' @description Analiza la existencia de asimetria en la distribucion de una variable continua.
#' @param x Nombre de la variable.
#' @param interprete Si desea que la funcion entrege interpretacion asignar
#'    'SI' en este parametro, en caso contrario asignar 'NO'.
#' @references Casella, G. (1990). Statistical Inference. Duxburry Press.
#' @export
#'
asimetria.fisher<-function(x,interprete){
  x<-stats::na.omit(x)
  i<-1
  n<-length(x)
  sx<-std(x)
  promx<-promedio(x)
  a<-0
  while(i<=n){
    a<-a+((x[i]-promx)^3)
    i<-i+1}
  a<-(a/((sx^3)*n))
  if(interprete=='SI'){
     if (a < 0) {print("Asimetria Negativa")}
     else if (a > 0) {print("Asimetria Positiva")}
     else print("Distribucion Simetrica")}
  if(interprete=='NO'){}
  return(a)
}


