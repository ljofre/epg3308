#' @title Estadisticos Descriptivos Variables Categoricas no ordinales
#' @description Entrega un resumen descriptivo de las variables categoricas de una base de datos
#'    que contine variables de tipo numericas y categoricas no ordinales.
#' @param data.base Nombre de la base de datos.
#' @references Casella, G. (1990). Statistical Inference. Duxburry Press.
#' @examples
#' data("albahaca")
#' descriptive.categorical(albahaca)
#' @export
#'
descriptive.categorical <- function(data.base){
  nmcols <- colnames(data.base)
  fac <- c()
  for(nm in nmcols){
    dt.typ <- class(data.base[[nm]])
    if(dt.typ == "factor"){
      fac <- c(fac, c(nm))
    }
  }

  categorical.data <- data.base[fac]
  num.row <- nrow(categorical.data)
  categorical.data

  agg_return <- c()
  for(nm in colnames(categorical.data)){
    agg <- stats::aggregate(categorical.data[[nm]], by=list(categorical.data[[nm]]), length)
    colnames(agg) <- c(nm, "n")
    print(nm)
    agg["proporcion"] <- round(agg$n/num.row,4)
    agg["odds"] <- round(agg$proporcion/(1-agg$proporcion),4)
    agg["error std"] <- round(sqrt(agg["proporcion"]*(1-agg["proporcion"])/num.row),4)
    print(agg)
  }
}



