% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/replace_tex_tags.R
\name{replace_tex_tags}
\alias{replace_tex_tags}
\title{Translate LaTeX escaped characters in UTF-8}
\usage{
replace_tex_tags(x)
}
\arguments{
\item{x}{a vector of characters in which common LaTeX/BiBTeX escaped
characters must be converted.}
}
\value{
A vector of characters.
}
\description{
Converts common LaTeX/BiBTeX escaped characters into UTF-8 encoding. For
instance, \verb{\{'\{e\}\}} will be translated in \code{é}.
}
\examples{
replace_tex_tags("H{\\\\'{e}}t{\\\\'{e}}rog{\\\\'{e}}n{\\\\'{e}}it{\\\\'{e}}")
replace_tex_tags(c("Mon c{\\\\oe}ur", "El Ni{\\\\~{n}}o"))
}
