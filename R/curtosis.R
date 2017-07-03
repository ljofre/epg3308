#' @title Curtosis
#' @description Estudia la curtosis de una variable de tipo continua.
#' @param x Nombre de la variable
#' @param interprete Si desea que la funcion entrege una interpretacion asignar
#'    'SI' en este parametro, en caso contrario asignar 'NO'.
#' @references Casella, G. (1990). Statistical Inference. Duxburry Press.
#' @examples
#' data("albahaca")
#' curtosis(albahaca$produccion,'SI')
#' @export
#'
curtosis<-function(x,interprete){
  x<-stats::na.omit(x)
  i<-1
  n<-length(x)
  sx<-std(x)
  promx<-promedio(x)
  c<-0
  while(i<=n){
    c<-c+((x[i]-promx)^4)
    i<-i+1}
  c<-(c/((sx^4)*n))
  if(interprete=='SI'){
     if (c < 3) {print("Distribucion Platicurtica")}
     else if (c > 3) {print("Distribucion Leptocurtica")}
     else print("Distribucion Mesocurtica")}
  if(interprete=='NO'){}
  return(c)
}
