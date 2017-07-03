#' @title Cuartiles
#' @description Calcula los cuartiles de una variable continua junto con un
#'     un histograma donde se señalan los cuartiles calculados.
#' @param x Nombre de la variable.
#' @references Casella, G. (1990). Statistical Inference. Duxburry Press.
#' @examples
#' data("albahaca")
#' cuartiles(albahaca$produccion)
#' @export
#'
cuartiles<-function(x){
          n<-length(x)
          y<-ordena(x)
          m<-n%%2
          if(m!=0){
             c1<-((n*1)/4)
             Q1<-y[c1]
             c2<-((n*2)/4)
             Q2<-y[c2]
             c3<-((n*3)/4)
             Q3<-y[c3]}
               else{c1<-trunc((n*1)/4)
                   Q1<-round(((y[c1]+y[c1+1])/2),2)
                   c2<-trunc((n*2)/4)
                   Q2<-round(((y[c2]+y[c2+1])/2),2)
                   c3<-trunc((n*3)/4)
                   Q3<-round(((y[c3]+y[c3+1])/2),2)}
          Q<-matrix(nrow=3,ncol=1)
          Q[1,1]<-Q1
          Q[2,1]<-Q2
          Q[3,1]<-Q3
          dimnames(Q)<-list(c("Q1","Q2","Q3"),c("Cuartiles"))
          print(Q)
          graphics::hist(x,main="Histograma",ylab="Frecuencia",xlab="",col="gray88")
          graphics::lines( c(Q1,Q1), c(0,length(x)), col = "dodgerblue2", lwd = 2)
          graphics::lines( c(Q2,Q2), c(0,length(x)), col = "darkorchid4", lwd = 2)
          graphics::lines( c(Q3,Q3), c(0,length(x)), col = "forestgreen", lwd = 2)
          graphics::legend("topright", c("P25", "P50","P75"), col=c("dodgerblue2","darkorchid4","forestgreen"), lwd=3)
}
