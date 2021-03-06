% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cuartiles.R
\name{cuartiles}
\alias{cuartiles}
\title{Cuartiles}
\usage{
cuartiles(x)
}
\arguments{
\item{x}{Nombre de la variable.}
}
\description{
Calcula los cuartiles de una variable continua junto con un
    un histograma donde se señalan los cuartiles calculados.
}
\examples{
data("albahaca")
cuartiles(albahaca$produccion)
}
\references{
Casella, G. (1990). Statistical Inference. Duxburry Press.
}
