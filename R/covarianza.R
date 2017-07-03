#' @title Covarianza
#' @description Calcula la covarianza entre dos variables de tipo continuas.
#' @param x Nombre variable X.
#' @param y Nombre variable Y.
#' @references Casella, G. (1990). Statistical Inference. Duxburry Press.
#' @examples
#' data("albahaca")
#' covarianza(albahaca$produccion,albahaca$temp)
#' @export
#'
covarianza<-function(x,y){
  if(length(x)==length(y)){
    promx<-promedio(x)
    promy<-promedio(y)
    n<-length(x)
    c<-(suma((x-promx)*(y-promy)))/(n-1)
    return(c)}
      else{print("Las variables poseen distintos tamanos")}}
