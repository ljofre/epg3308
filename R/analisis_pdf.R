#' @title Informe Descriptivo
#' @description Genera un informe estadistico que incorpora estadisticos descritivos
#'    , correlaciones entre variables, histogramas de las variables y graficas Box Plot.
#' @param base Nombre base de datos a analizar, esta debe contener variables de tipo
#'     continuas.
#' @param name Nombre archivo a generar.
#' @param direc Diarectorio donde se almacena el archivo.
#' @examples
#' data("albahaca")
#' informe.word(albahaca,"estadisticos.pdf","C:/Users/usuario/Desktop")
#' @export
informe.pdf<-function(base,name,direc){
  rmarkdown::render(input="inst/rmarkdown/informe_pdf.Rmd",
                    "pdf_document",
                    output_file=name,output_dir=direc)
}


