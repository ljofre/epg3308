# library(R6)
#
# descriptive <- function(x) {
#
#   descriptiveClass <- R6::R6Class(
#     "descriptive",
#     public = c(
#       x = NULL,
#       categorical = NULL,
#       numerical = NULL,
#       initialize <-function(x){
#         self$x <- x
#       },
#       plot = function(n = NULL) {
#
#         if (is.null(n)) {
#           return(1)
#         }
#         else{
#           return(1 + n)
#         }
#
#       }
#     )
#   )
#   z <- descriptiveClass$new(x=x)
#   return(z)
# }
#
# # ejemplo descriptive
#
# dsc <- descriptive(x = albahaca)
#
# plot(dsc)
