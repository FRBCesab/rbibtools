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
#' @importFrom stringi stri_unescape_unicode
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
  
  x <- gsub("\\{\\\\'\\{a\\}\\}", stri_unescape_unicode("\\u00e1"), x)
  x <- gsub("\\{\\\\'\\{e\\}\\}", stri_unescape_unicode("\\u00e9"), x)
  x <- gsub("\\{\\\\'\\{i\\}\\}", stri_unescape_unicode("\\u00ed"), x)
  x <- gsub("\\{\\\\'\\{o\\}\\}", stri_unescape_unicode("\\u00f3"), x)
  x <- gsub("\\{\\\\'\\{u\\}\\}", stri_unescape_unicode("\\u00fa"), x)
  
  x <- gsub("\\{\\\\`\\{a\\}\\}", stri_unescape_unicode("\\u00e0"), x)
  x <- gsub("\\{\\\\`\\{e\\}\\}", stri_unescape_unicode("\\u00e8"), x)
  x <- gsub("\\{\\\\`\\{i\\}\\}", stri_unescape_unicode("\\u00ec"), x)
  x <- gsub("\\{\\\\`\\{o\\}\\}", stri_unescape_unicode("\\u00f2"), x)
  x <- gsub("\\{\\\\`\\{u\\}\\}", stri_unescape_unicode("\\u00f9"), x)
  
  x <- gsub("\\{\\\\\\^\\{a\\}\\}", stri_unescape_unicode("\\u00e2"), x)
  x <- gsub("\\{\\\\\\^\\{e\\}\\}", stri_unescape_unicode("\\u00ea"), x)
  x <- gsub("\\{\\\\\\^\\{i\\}\\}", stri_unescape_unicode("\\u00ee"), x)
  x <- gsub("\\{\\\\\\^\\{o\\}\\}", stri_unescape_unicode("\\u00f4"), x)
  x <- gsub("\\{\\\\\\^\\{u\\}\\}", stri_unescape_unicode("\\u00fb"), x)
  
  x <- gsub("\\{\\\\\"\\{a\\}\\}", stri_unescape_unicode("\\u00e4"), x)
  x <- gsub("\\{\\\\\"\\{e\\}\\}", stri_unescape_unicode("\\u00eb"), x)
  x <- gsub("\\{\\\\\"\\{i\\}\\}", stri_unescape_unicode("\\u00ef"), x)
  x <- gsub("\\{\\\\\"\\{o\\}\\}", stri_unescape_unicode("\\u00f6"), x)
  x <- gsub("\\{\\\\\"\\{u\\}\\}", stri_unescape_unicode("\\u00fc"), x)
  
  x <- gsub("\\{\\\\c\\{c\\}\\}", stri_unescape_unicode("\\u00e7"), x)
  x <- gsub("\\{\\\\~\\{n\\}\\}", stri_unescape_unicode("\\u00f1"), x)
  
  x <- gsub("\\{\\\\ae\\}", "ae", x)
  x <- gsub("\\{\\\\oe\\}", "oe", x)
  
  x <- gsub("\\{\\\\aa\\}", stri_unescape_unicode("\\u00e5"), x)
  x <- gsub("\\{\\\\AA\\}", stri_unescape_unicode("\\u00c5"), x)
  x <- gsub("\\{\\\\o\\}", stri_unescape_unicode("\\u00f8"), x)
  x <- gsub("\\{\\\\O\\}", stri_unescape_unicode("\\u00d8"), x)
  
  x <- gsub("\\{\\\\'\\{A\\}\\}", stri_unescape_unicode("\\u00c1"), x)
  x <- gsub("\\{\\\\'\\{E\\}\\}", stri_unescape_unicode("\\u00c9"), x)
  x <- gsub("\\{\\\\'\\{I\\}\\}", stri_unescape_unicode("\\u00cd"), x)
  x <- gsub("\\{\\\\'\\{O\\}\\}", stri_unescape_unicode("\\u00d3"), x)
  x <- gsub("\\{\\\\'\\{U\\}\\}", stri_unescape_unicode("\\u00da"), x)
  
  x <- gsub("\\{\\\\`\\{A\\}\\}", stri_unescape_unicode("\\u00c0"), x)
  x <- gsub("\\{\\\\`\\{E\\}\\}", stri_unescape_unicode("\\u00c8"), x)
  x <- gsub("\\{\\\\`\\{I\\}\\}", stri_unescape_unicode("\\u00cc"), x)
  x <- gsub("\\{\\\\`\\{O\\}\\}", stri_unescape_unicode("\\u00d2"), x)
  x <- gsub("\\{\\\\`\\{U\\}\\}", stri_unescape_unicode("\\u00d9"), x)
  
  x <- gsub("\\{\\\\\\^\\{A\\}\\}", stri_unescape_unicode("\\u00c2"), x)
  x <- gsub("\\{\\\\\\^\\{E\\}\\}", stri_unescape_unicode("\\u00ca"), x)
  x <- gsub("\\{\\\\\\^\\{I\\}\\}", stri_unescape_unicode("\\u00ce"), x)
  x <- gsub("\\{\\\\\\^\\{O\\}\\}", stri_unescape_unicode("\\u00d4"), x)
  x <- gsub("\\{\\\\\\^\\{U\\}\\}", stri_unescape_unicode("\\u00db"), x)
  
  x <- gsub("\\{\\\\\"\\{A\\}\\}", stri_unescape_unicode("\\u00c4"), x)
  x <- gsub("\\{\\\\\"\\{E\\}\\}", stri_unescape_unicode("\\u00cb"), x)
  x <- gsub("\\{\\\\\"\\{I\\}\\}", stri_unescape_unicode("\\u00cf"), x)
  x <- gsub("\\{\\\\\"\\{O\\}\\}", stri_unescape_unicode("\\u00d6"), x)
  x <- gsub("\\{\\\\\"\\{U\\}\\}", stri_unescape_unicode("\\u00dc"), x)
  
  x <- gsub("\\{\\\\C\\{C\\}\\}", stri_unescape_unicode("\\u00c7"), x)
  x <- gsub("\\{\\\\~\\{N\\}\\}", stri_unescape_unicode("\\u00d1"), x)
  
  x <- gsub("\\{\\\\AE\\}", "AE", x)
  x <- gsub("\\{\\\\OE\\}", "OE", x)
  
  x <- gsub("\\{\\\\&\\}", "&", x)
  x <- gsub("\\{\\\\%\\}", "%", x)
  x <- gsub("\\{\\\\\\$\\}", "$", x)
  x <- gsub("\\{\\\\_\\}", "_", x)
  
  x <- gsub("\\{\\\\ldots\\}", "...", x)
  x <- gsub("\\{\\\\~\\{\\}\\}", "~", x)
  
  x <- gsub("\\{\\\\textless\\}", "<", x)
  x <- gsub("\\{\\\\textgreater\\}", ">", x)
  x <- gsub("\\{\\\\textcopyright\\}", "\\u00a9", x)
  
  x
}
