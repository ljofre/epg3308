#' @title Ordena
#' @description Ordena de menor a mayor una variable aleatoria de tipo continua.
#' @param x Nombre de la variable.
#' @export
#'
ordena<-function(x){
x-stats::na.omit(x)
n<-length(x)
i<-1
while(i<=n){
   min<-i
   j<-i+1
   while(j<=n){
     if (x[min]>x[j])
        {min<-j}
     j<-j+1}
   aux<-x[min]
   x[min]<-x[i]
   x[i]<-aux
   i<-i+1}
   return(x)
}

