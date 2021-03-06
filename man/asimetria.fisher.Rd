% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/asimetria_fisher.R
\name{asimetria.fisher}
\alias{asimetria.fisher}
\title{Coeficiente de Asimetria de Fisher}
\usage{
asimetria.fisher(x, interprete)
}
\arguments{
\item{x}{Nombre de la variable.}

\item{interprete}{Si desea que la funcion entrege interpretacion asignar
'SI' en este parametro, en caso contrario asignar 'NO'.}
}
\description{
Analiza la existencia de una distribucion asimetrica en una variable de tipo
   continua.
}
\examples{
data("albahaca")
asimetria.fisher(albahaca$produccion,'SI')
}
\references{
Casella, G. (1990). Statistical Inference. Duxburry Press.
}
