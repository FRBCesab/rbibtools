#' Read BiBTeX references exported by Mendeley
#'
#' @description
#' Reads BiBTeX references exported by Mendeley (or not) and stores metadata 
#' into a data frame using the function [bib2df::bib2df()].
#'   
#' @param path the folder containing BiBTeX files to read.
#' 
#' @param tags a vector of characters. BiBTeX fields to extract 
#'   (e.g. author, year, etc.). See below **Details** section.
#'   
#' @param categories (optional) a vector of characters. Publications categories
#'   to import (e.g. article, book, etc.). See below **Details** section.
#'   Default is `NULL` (all publications will be retrieved).
#' 
#' @param filename the name of the xlsx file to create.
#' 
#' @param pattern (optional) a character used to select BiBTeX files. For 
#'   instance, if all BiBTeX start with **CESAB-** (i.e. `CESAB-***.bib`) user 
#'   can add `pattern = 'CESAB-'` to only read these BiBTeX files.
#'
#' @return A data frame with BiBTeX fields in columns and references in rows.
#' 
#' @details 
#' **Valid tags values**:
#' 
#' - `category`: type of publication
#' - `bibtexkey`: unique identifier of the publication
#' - `annote`: user annotations
#' - `author`: authors names
#' - `booktitle`: title of the book
#' - `chapter`: chapter number (for book chapter)
#' - `crossref`: Crossref identifier
#' - `edition`: edition number
#' - `editor`: editors names
#' - `institution`: institution name (for thesis and report)
#' - `journal`: journal name (for scientific article)
#' - `month`: month of the date of publication
#' - `number`: issue number
#' - `pages`: pages range or pages number or article number
#' - `publisher`: publisher name (i.e. Elsevier, etc.)
#' - `series`: series name
#' - `title`: title of the publication
#' - `volume`: volume number
#' - `year`: year of the date of publication
#' - `doi`: DOI (without https://doi.org/)
#' - `abstract`: abstract of the publications
#' - `keywords`: authors keywords
#' - `url`: URL of the only publication
#' - `isbn`: ISSN identifier of the book/journal
#' - `pmid`: PMID identifier
#' 
#' 
#' **Valid categories values**:
#' 
#' - `article`: scientific paper
#' - `book`: book
#' - `incollection`: book chapter
#' - `inproceedings`: proceeding article
#' - `phdthesis`: PhD thesis
#' - `techreport`: technical report
#'
#' @export
#'
#' @examples
#' \dontrun{
#' refs <- read_bibtex(path = ".", filename = "~/Desktop/references", 
#'                     pattern = "CESAB-")
#' }

read_bibtex <- function(path = ".", 
                        tags = c("bibtexkey", "category", "author", "title", 
                                 "year", "volume", "booktitle","editor", 
                                 "journal", "pages", "institution", "publisher",
                                 "doi", "url", "abstract", "keywords", 
                                 "annote"), 
                        categories  = NULL, filename = NULL, pattern = NULL) {
  
  
  ## Checks ----
  
  if (!dir.exists(path)) {
    stop("The folder 'path' does not exist.")
  }
  
  if (!is.null(pattern)) {
    
    special_chars <- c(".", "*", "?", ")", "(", "]", "[", "}", "{", ":")
    pattern_check <- unlist(strsplit(pattern, ""))
    
    if (any(pattern_check %in% special_chars)) {
      stop("Special characters are not allowed in 'pattern'.")
    }
    
  } else {
    
    pattern <- ""
  }
  
  
  if (!is.null(categories)) {
    
    categories <- tolower(categories)
    
    valid_categories <- c("article", "book", "incollection", "inproceedings",
                          "phdthesis", "techreport")
    
    if (any(!(categories %in% valid_categories))) {
      stop("Invalid publication category (argument 'categories').")
    }
  }
  
  
  if (!is.null(tags)) {
    
    tags <- tolower(tags)
    
    valid_tags <- c("category", "bibtexkey", "annote", "author", "booktitle", 
                    "chapter", "crossref", "edition", "editor", "institution", 
                    "journal", "month", "number", "pages", "publisher", 
                    "series", "title", "volume", "year", "doi", "abstract", 
                    "keywords", "url", "isbn", "pmid")
    
    if (any(!(tags %in% valid_tags))) {
      stop("Invalid publication tag (argument 'tags').")
    }
  }
  
  
  if (is.null(filename)) {
    stop("Argument 'filename' is required.")
  }
  
  if (!is.character(filename) || length(filename) != 1) {
    stop("Argument 'filename' must be a character of length 1.")
  }
  
  
  
  ## List BiBTeX files ----
  
  files <- list.files(path, pattern = paste0("^", pattern, ".*\\.bib$"))
  
  if (!length(files)) { 
    stop("No BiBTeX was found in '", path, "'.")
  }
  
  
  tags <- tolower(tags)
  
  if (!("category" %in% tags)) {
    tags <- c("category", tags)
  }
  
  tags <- c("filename", tags)
  
  
  refs <- as.data.frame(matrix(ncol = length(tags), nrow = 0))
  colnames(refs) <- tags
  
  
  for (j in 1:length(files)) {
    
    
    ## Import BiBTeX File <j> ----
    
    tab <- suppressMessages(bib2df::bib2df(file.path(path, files[j])))
    tab <- as.data.frame(tab)
    
    colnames(tab) <- tolower(colnames(tab))
    
    
    ## Add BiBTeX Filename ----
    
    tab <- data.frame("filename" = files[j], tab)
    
    
    ## Add missing columns ----
    
    pos <- which(!(tags %in% colnames(tab)))
    
    if (length(pos) > 0) {
      
      for (i in 1:length(pos) > 0) {
        
        tab[ , tags[pos[i]]] <- NA
      }
    }
    
    
    ## Remove LaTeX Tags ----
    
    tags_names <- c("author", "editor")
    tags_names <- tags[tags %in% tags_names]
    
    if (length(tags_names)) {
      for (tag in tags_names) {
        tab[tag][[1]] <- lapply(tab[ , tag], replace_tex_tags)
        tab[tag][[1]] <- unlist(lapply(tab[ , tag], function(x) {
          paste0(unlist(x), collapse = " ; ")
        }))
      }
    }
    
    
    tags_texts <- c("title", "booktitle", "journal", "publisher", "abstract", 
                    "keywords")
    tags_texts <- tags[tags %in% tags_texts]
    
    if (length(tags_texts)) {
      for (tag in tags_texts) {
        tab[ , tag] <- replace_tex_tags(tab[ , tag])
      }
    }
    
    
    ## Append References ----
    
    refs <- rbind(refs, tab[ , tags])
  }
  
  refs[ , "category"] <- tolower(refs[ , "category"])
  
  
  ## Filter by Reference Categories ----
  
  if (!is.null(categories)) { 
    
    categories <- tolower(categories)
    
    refs <- refs[refs[ , "category"] %in% categories, ]
  }
  
  
  ## Order references ----
  
  refs <- refs[with(refs, order(filename, -year)), ]
  rownames(refs) <- NULL
  
  
  ## Add Unique Key ----
  
  refs <- data.frame("noid" = 1:nrow(refs), refs)
  
  
  ## Export as Excel file ----
  
  filename <- gsub("\\.xls(x)?", "", filename)
  writexl::write_xlsx(refs, path = paste0(filename, ".xlsx"))
  
  refs
}
