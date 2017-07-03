#' @title Informe Descriptivo Word
#' @description Genera un informe estadistico que incorpora estadisticos descritivos
#'    , correlaciones entre variables, histogramas de las variables y graficas Box Plot.
#' @param base Nombre base de datos a analizar, esta debe contener variables de tipo
#'     continuas.
#' @param name Nombre archivo a generar.
#' @param direc Diarectorio donde se almacena el archivo.
#' @examples
#' data("albahaca")
#' informe.word(albahaca,"estadisticos.docx","C:/Users/usuario/Desktop")
#' @export
informe.word<-function(base,name,direc){
  rmarkdown::render(input="inst/rmarkdown/informe_word.Rmd",
                    output_format = rmarkdown::word_document(),
                    output_file =name,
                    output_dir = direc)
}

