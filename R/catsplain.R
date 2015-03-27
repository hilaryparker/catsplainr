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
#' @param meow a faction of the words to replace with meow.
#' @param ... extra arguments.
#'
#' @return A cat explaining the object.
#'
#' @import explainr
#'
#' @export
catsplain <- function(x, meow=0.001, ...) {
    out <- explain(x, ...)
    if (meow > 0) {
      words <- strsplit(out, " ")[[1]]
      meows <- as.logical(rbinom(length(words), 1, meow))
      words[meows] <- "meow"
      out <- paste(words, collapse=" ")
    }

    out <- explainr_output(
      paste(
        "------------------------------------------------",
        out,
        cat_img,
        sep = "\n"))

    out
}
