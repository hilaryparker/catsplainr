#' Complaints that are randomly chosen
cat_img <- "------------------------------------------------ \n    \\\   \n     \\\

      \\`*-.
        )  _`-.
       .  : `. .
       : _   '  \
       ; *` _.   `*-._
       `-.-'          `-.
         ;       `       `.
         :.       .       \\
         .\\  .   :   .-'   .
         '  `+.;  ;  '      :
         :  '  |    ;       ;-.
         ; '   : :`-:     _.`* ;
      .*' /  .*' ; .*`- +'  `*'
      `*-*   `*-*  `*-*'\n\n"

#' Have a cat explain an R object
#'
#' This friendly cat explains an R object to you.
#'
#' @param x object to be explained
#' @param ... extra arguments.
#'
#' @return A cat explaining the object.
#'
#' @import explainr
#'
#' @export
catsplain <- function(x, ...) {
    out <- explain(x, ...)

    out <- explainr_output(
      paste(
        "------------------------------------------------",
        out,
        cat_img,
        sep = "\n"))

    out
}
