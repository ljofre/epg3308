#' @title Informe Estadisticos Descriptivos formato Word
#' @description Genera un informe estadistico que incorpora estadisticos descritivos
#'    , correlaciones entre variables, Histogramas y graficas Box Plot.
#' @param base Nombre base de datos a analizar.
#' @param name Nombre archivo a generar,este argumento debe ser entregado en formato:
#'     "nombre.docx"
#' @param direc Directorio donde se almacena el archivo a generar.
#' @examples
#' \dontrun{
#' data("albahaca")
#' informe.word(albahaca,"estadisticos.docx","C:/Users/usuario/Desktop")}
#' @export
informe.word<-function(base,name,direc){
  rmarkdown::render(input="inst/rmarkdown/informe_word.Rmd",
                    output_format = rmarkdown::word_document(),
                    output_file =name,
                    output_dir = direc)}

