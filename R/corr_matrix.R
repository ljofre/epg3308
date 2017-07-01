#' @title Matrix de correlaciones
#' @description Calcula la matriz de correlaciones de una base de una base de datos
#'     que contiene variables de tipo continuas.
#' @param base Nombre de la base de datos
#' @param cont Vector nombre de variables continuas.
#' @references Casella, G. (1990). Statistical Inference. Duxburry Press.
#' @export
#'
corr.matrix<-function(base,cont){
  ncont<-length(cont)
  x<-matrix(ncol=ncont,nrow=ncont)
  j<-1 #fila
  while(j<=ncont){
    i<-1 #columna
    while (i<=ncont)
    {x[j,i]<-(covarianza(base[[cont[[j]]]],base[[cont[[i]]]])/(std(base[[cont[[j]]]])*std(base[[cont[[i]]]])))
    i<-i+1}
    j<-j+1}
  dimnames(x)<-list(cont,cont)
  return(x)}






