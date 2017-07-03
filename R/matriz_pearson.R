#' @title Matriz de correlacion de Pearson
#' @description Calcula la matriz de correlaciones de Pearson para las variables continuas
#'     de una base de datos.
#' @param data.base Nombre de la base de datos
#' @references Casella, G. (1990). Statistical Inference. Duxburry Press.
#' @examples
#' data("albahaca")
#' corr.matrix.pearson(albahaca)
#' @export
#'
corr.matrix.pearson <- function(data.base){
  nmcols <- colnames(data.base)
  num <- c() # selecciona las variables numericas
  for(nm in nmcols){
    dt.typ <- class(data.base[[nm]])
    if(dt.typ=="numeric" | dt.typ=="integer"){
      num <- c(num, c(nm))
    }
  }
  pearson.mtx <- matrix(ncol=length(num),nrow = length(num),dimnames=list(num,num))
  for(name.num.x in num){
    for(name.num.y in num){
      x <- data.base[[name.num.x]]
      y <- data.base[[name.num.y]]
      n <- length(x)
      pearson.correlation<-(covarianza(x,y)/(std(x)*std(y)))
      pearson.mtx[name.num.x, name.num.y]<-pearson.correlation
    }
  }
  return(pearson.mtx)
}
