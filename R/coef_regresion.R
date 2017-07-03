#' @title Correlacion de Pearson y Coeficientes de Regresion Lineal Simple
#' @description Calcula la correlacion de Pearson entre las combinaciones posibles de
#'     variables continuas de una base de datos, de manera adicional entrega una
#'     estimacion de los coeficientes de Regresion Lineal como informacion a priori para
#'     otro tipo de analisis.
#' @param data.base Nombre de la base de datos.
#' @references Casella, G. (1990). Statistical Inference. Duxburry Press.
#' @examples
#' data("albahaca")
#' cuartiles(albahaca$produccion)
#' @export
#'
descriptive.regression <- function(data.base){
  nmcols <- colnames(data.base)

  features <- c()
  for(nm in nmcols){
    dt.typ <- class(data.base[[nm]])
    if(dt.typ == "numeric"){
      features <- c(features, c(nm))
    }
    else if(dt.typ == "integer"){
      features <- c(features, c(nm))
    }
  }
  data.regression <- data.base[features]
  for(x.name in features){
    for(y.name in features){
      if(x.name != y.name){
        x <- data.regression[[x.name]]
        y <- data.regression[[y.name]]
        beta1 <- (covarianza(x,y)/(std(x)**2))
        beta0 <- promedio(y)-beta1*promedio(x)
        r2<-(covarianza(x,y)/(std(x)*std(y)))
        print(paste(y.name,"~",x.name))
        reg = c(beta0=beta0, beta1=beta1,R.cuadrado=r2)
        print(reg)
      }
    }
  }
}


descriptive.regression(albahaca)


lm(formula, data, subset, weights, na.action,
   method = "qr", model = TRUE, x = FALSE, y = FALSE, qr = TRUE,
   singular.ok = TRUE, contrasts = NULL, offset, ...)
