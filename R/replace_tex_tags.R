#' Translate LaTeX escaped characters in UTF-8
#'
#' Converts common LaTeX/BiBTeX escaped characters into UTF-8 encoding. For 
#' instance, `{'{e}}` will be translated in `é`.
#'
#' @param x a vector of characters in which common LaTeX/BiBTeX escaped 
#'   characters must be converted.
#'
#' @return A vector of characters.
#'
#' @export
#'
#' @examples
#' replace_tex_tags("H{\\'{e}}t{\\'{e}}rog{\\'{e}}n{\\'{e}}it{\\'{e}}")
#' replace_tex_tags(c("Mon c{\\oe}ur", "El Ni{\\~{n}}o"))


replace_tex_tags <- function(x) {
  
  if (missing(x)) { 
    stop("Argument 'x' is required.")
  }
  
  if (is.null(x)) { 
    stop("Argument 'x' is required.")
  }
  
  if (!is.character(x)) { 
    stop("Argument 'x' must be a character.")
  }
  
  x <- gsub("\\{\\\\'\\{a\\}\\}", "á", x)
  x <- gsub("\\{\\\\'\\{e\\}\\}", "é", x)
  x <- gsub("\\{\\\\'\\{e\\}", "é", x)
  x <- gsub("\\{\\\\'\\{i\\}\\}", "í", x)
  x <- gsub("\\{\\\\'\\{o\\}\\}", "ó", x)
  x <- gsub("\\{\\\\'\\{u\\}\\}", "ú", x)
  
  x <- gsub("\\{\\\\`\\{a\\}\\}", "à", x)
  x <- gsub("\\{\\\\`\\{e\\}\\}", "è", x)
  x <- gsub("\\{\\\\`\\{i\\}\\}", "ì", x)
  x <- gsub("\\{\\\\`\\{o\\}\\}", "ò", x)
  x <- gsub("\\{\\\\`\\{u\\}\\}", "ù", x)
  
  x <- gsub("\\{\\\\\\^\\{a\\}\\}", "â", x)
  x <- gsub("\\{\\\\\\^\\{e\\}\\}", "ê", x)
  x <- gsub("\\{\\\\\\^\\{i\\}\\}", "î", x)
  x <- gsub("\\{\\\\\\^\\{o\\}\\}", "ô", x)
  x <- gsub("\\{\\\\\\^\\{u\\}\\}", "û", x)
  
  x <- gsub("\\{\\\\\"\\{a\\}\\}", "ä", x)
  x <- gsub("\\{\\\\\"\\{e\\}\\}", "ë", x)
  x <- gsub("\\{\\\\\"\\{i\\}\\}", "ï", x)
  x <- gsub("\\{\\\\\"\\{o\\}\\}", "ö", x)
  x <- gsub("\\{\\\\\"\\{u\\}\\}", "ü", x)
  
  x <- gsub("\\{\\\\c\\{c\\}\\}", "ç", x)
  x <- gsub("\\{\\\\~\\{n\\}\\}", "ñ", x)
  
  x <- gsub("\\{\\\\ae\\}", "ae", x)
  x <- gsub("\\{\\\\oe\\}", "oe", x)
  
  x <- gsub("\\{\\\\'\\{A\\}\\}", "Á", x)
  x <- gsub("\\{\\\\'\\{E\\}\\}", "É", x)
  x <- gsub("\\{\\\\'\\{I\\}\\}", "Í", x)
  x <- gsub("\\{\\\\'\\{O\\}\\}", "Ó", x)
  x <- gsub("\\{\\\\'\\{U\\}\\}", "Ú", x)
  
  x <- gsub("\\{\\\\`\\{A\\}\\}", "À", x)
  x <- gsub("\\{\\\\`\\{E\\}\\}", "È", x)
  x <- gsub("\\{\\\\`\\{I\\}\\}", "Ì", x)
  x <- gsub("\\{\\\\`\\{O\\}\\}", "Ò", x)
  x <- gsub("\\{\\\\`\\{U\\}\\}", "Ù", x)
  
  x <- gsub("\\{\\\\\\^\\{A\\}\\}", "Â", x)
  x <- gsub("\\{\\\\\\^\\{E\\}\\}", "Ê", x)
  x <- gsub("\\{\\\\\\^\\{I\\}\\}", "Î", x)
  x <- gsub("\\{\\\\\\^\\{O\\}\\}", "Ô", x)
  x <- gsub("\\{\\\\\\^\\{U\\}\\}", "Û", x)
  
  x <- gsub("\\{\\\\\"\\{A\\}\\}", "Ä", x)
  x <- gsub("\\{\\\\\"\\{E\\}\\}", "Ë", x)
  x <- gsub("\\{\\\\\"\\{I\\}\\}", "Ï", x)
  x <- gsub("\\{\\\\\"\\{O\\}\\}", "Ö", x)
  x <- gsub("\\{\\\\\"\\{U\\}\\}", "Ü", x)
  
  x <- gsub("\\{\\\\C\\{C\\}\\}", "Ç", x)
  x <- gsub("\\{\\\\~\\{N\\}\\}", "Ñ", x)
  
  x <- gsub("\\{\\\\AE\\}", "AE", x)
  x <- gsub("\\{\\\\OE\\}", "OE", x)
  
  x <- gsub("\\{\\\\&\\}", "&", x)
  
  x <- gsub("^\\{", "", x)
  x <- gsub("\\},", ",", x)
  
  x
}
