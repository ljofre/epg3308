#' @title Informe Descriptivo en formato PDF y Latex
#' @description Genera un informe estadistico que incorpora estadisticos descritivos
#'    , correlaciones entre variables, histogramas de las variables y graficas Box Plot.
#' @param base Nombre base de datos a analizar, esta debe contener variables de tipo
#'     continuas.
#' @param colhist Color del Histograma a generar, debe ser introducido entre comillas.
#'      Ej: "green".
#' @param colbox Color de la grafica Box-Plot a generar, debe ser introducido entre comillas.
#'      Ej: "blue".
#' @param name Corresponde al nombre del archivo PDF generado, este debe introducirse
#'      de la siguiente forma: "nombre.pdf"
#' @param direc Ubicación donde se guaradara el archivo generado, debe ser introducido
#'      entre comillas. Ej:"C:/Users/usuario/Desktop"
#' @export
#'
analisis.pdf.latex<-function(base,colhist,colbox,name,direc){
rmarkdown::render("inst/rmarkdown/analisis_pdf.Rmd"
, "pdf_document",output_file=name,output_dir=direc)
}


