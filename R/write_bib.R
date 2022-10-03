#' Create a bib file from a data.frame
#'
#' @param data a `data.frame` with references fields in columns and references 
#'   in rows.
#'   
#' @param file a `character` of length 1. The name of `.bib` file to create.
#' 
#' @param append a `logical`. If `TRUE` the `data.frame` will be appended to 
#'   an existing file. Default is `FALSE`.
#'
#' @return No returned value.
#' 
#' @export
#'
#' @examples
#' ## Import .bib file(s) ----
#' path_to_bibs <- system.file("extdata", package = "rbibtools")
#' refs <- rbibtools::read_bib(path = path_to_bibs)
#' 
#' ## Export data.frame to .bib files ----
#' filename <- tempfile()
#' rbibtools::write_bib(refs, filename)

write_bib <- function(data, file = "", append = FALSE) {
  
  if (missing(data)) {
    stop("Argument 'data' is required", call. = FALSE)
  }
  
  if (!is.data.frame(data)) {
    stop("Argument 'data' must be a data.frame", call. = FALSE)
  }
  
  colnames(data) <- toupper(colnames(data))
  
  
  ## Replace NA ----
  
  fields <- c("AUTHOR", "EDITOR")
  
  for (field in colnames(data)) {
    
    pos <- which(data[ , field] == "NA")
    if (length(pos) > 0) {
      data[pos, field] <- NA
    }
  }
  
  
  ## Replace ' ; ' by ' and ' ----
  
  for (field in fields) {
    
    pos <- which(!is.na(data[ , field]))
    if (length(pos) > 0) {
      data[pos, field] <- gsub(" ; ", " and ", data[pos, field])
    }
  }
  
  
  ## Export bib ----
  
  bib2df::df2bib(data, file = file, append = append)
  
  invisible(NULL)
}
