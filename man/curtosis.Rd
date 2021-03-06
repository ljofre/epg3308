% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/curtosis.R
\name{curtosis}
\alias{curtosis}
\title{Curtosis}
\usage{
curtosis(x, interprete)
}
\arguments{
\item{x}{Nombre de la variable.}

\item{interprete}{Si desea que la funcion entrege una interpretacion asignar
'SI' en este parametro, en caso contrario asignar 'NO'.}
}
\description{
Estudia la curtosis de una variable de tipo continua.
}
\examples{
data("albahaca")
curtosis(albahaca$produccion,'SI')
}
\references{
Casella, G. (1990). Statistical Inference. Duxburry Press.
}
