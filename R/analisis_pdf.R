#' @title Informe Estadisticos Descriptivos formato PDF
#' @description Genera un informe estadistico que incorpora estadisticos descritivos
#'    , correlaciones entre variables, Histogramas y graficas Box Plot.
#' @param base Nombre de base de datos a analizar.
#' @param name Nombre archivo a generar, este argumento debe ser entregado en formato:
#'     "nombre.pdf"
#' @param direc Directorio donde se almacena el archivo a generar.
#' @examples
#' \dontrun{
#' data("albahaca")
#' informe.pdf(albahaca,"estadisticos.pdf","C:/Users/usuario/Desktop")}
#' @export
informe.pdf<-function(base,name,direc){
 rmarkdown::render(input="inst/rmarkdown/informe_pdf.Rmd",
                  "pdf_document",
                  output_file=name,
                  output_dir=direc)}


