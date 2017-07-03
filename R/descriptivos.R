#' @title Estadisticos Descriptivos Variables Continuas
#' @description Entrega un resumen descriptivo de las variables continuas de una base de datos.
#'    Permite la obtención del Numero de datos, Promedio, Suma, Desviacion Estandar,
#'    Coeficiente de Variacion, Asimetria, Curtosis, Minimo, Maximo y Cuartiles.
#' @param base Nombre de la base de datos.
#' @references Casella, G. (1990). Statistical Inference. Duxburry Press.
#' @examples
#' data("albahaca")
#' descriptive.continue(albahaca)
#' @export
#'

descriptive.continue<-function(base)
{
  nmcols <- colnames(base)
  cont <- c() # selecciona las variables numericas
  for(nm in nmcols){
    dt.typ <- class(base[[nm]])
    if(dt.typ=="numeric" | dt.typ=="integer"){
      cont <- c(cont, c(nm))
    }}
  nvar<-length(cont)
  x<-matrix(ncol=12,nrow=nvar)
  i<-1 #numero variables
  while(i<=nvar){
    x[i,1]<-round(length(base[[cont[i]]])) #N
    x[i,2]<-round(promedio(base[[cont[i]]]),3) #media
    x[i,3]<-round(suma(base[[cont[i]]]),3) #suma
    x[i,4]<-round(std(base[[cont[i]]]),3) #std
    x[i,5]<-round(coeficiente.variacion(base[[cont[i]]]),3) #std
    x[i,6]<-round(asimetria.fisher(base[[cont[i]]],'NO'),3)#asimetria
    x[i,7]<-round(curtosis(base[[cont[i]]],'NO'),3)
    x[i,8]<-round(minimo(base[[cont[i]]]),3)
    x[i,9]<-round(maximo(base[[cont[i]]]),3)
    n<-length(base[[cont[i]]])
    y<-base[[cont[i]]]
    m<-n%%2
    if(m!=0){
      c1<-((n*1)/4)
      Q1<-y[c1]
      c2<-((n*2)/4)
      Q2<-y[c2]
      c3<-((n*3)/4)
      Q3<-y[c3]}
    else{
      c1<-trunc((n*1)/4)
      Q1<-round(((y[c1]+y[c1+1])/2),2)
      c2<-trunc((n*2)/4)
      Q2<-round(((y[c2]+y[c2+1])/2),2)
      c3<-trunc((n*3)/4)
      Q3<-round(((y[c3]+y[c3+1])/2),2)}
    x[i,10]<-round(Q1,3)#cuartil 1
    x[i,11]<-round(Q2,3)#cuartil 2
    x[i,12]<-round(Q1,3)#cuartil 3
    i<-i+1}
  dimnames(x)<-list(cont,c("n","promedio","suma","std","CV"
                           ,"asimetria","curtosis","minimo","maximo"
                           ,"Q1","Q2","Q3"))
  print(x)
}
