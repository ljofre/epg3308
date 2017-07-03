#' @title Matriz de correlacion de Spearman
#' @description Calcula la matriz de correlacion de Spearman para las variables continuas
#'     presentes en una base de datos.
#' @param data.base Nombre de la base de datos
#' @references Casella, G. (1990). Statistical Inference. Duxburry Press.
#' @examples
#' data("albahaca")
#' corr.matrix.spearman(albahaca)
#' @export
corr.matrix.spearman <- function(data.base){
  nmcols <- colnames(data.base)
  num <- c() # selecciona las variables numericas
  for(nm in nmcols){
    dt.typ <- class(data.base[[nm]])
    if(dt.typ=="numeric" | dt.typ=="integer" ){
      num <- c(num, c(nm))
    }
  }
  spearman.mtx <- matrix(ncol=length(num),nrow = length(num),dimnames=list(num,num))
  for(name.num.x in num){
    for(name.num.y in num){
      x <- data.base[[name.num.x]]
      y <- data.base[[name.num.y]]
      n <- length(x)
      spearman.correlation<-1-(sum((order(x)-order(y))**2)/(n*(n**2-1)))
      spearman.mtx[name.num.x, name.num.y]<-spearman.correlation
    }
  }
  return(spearman.mtx)
}
