% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/function.R
\name{group_seq_pos}
\alias{group_seq_pos}
\title{collapse sequence of repeated POS into a single one}
\usage{
group_seq_pos(DF, POS = "PROPN|NOUN")
}
\description{
collapse sequence of repeated POS into a single one
}
\examples{
pos <- "Mary Jane was the first to drink" |> spacy_parse()
pos |> group_seq_pos()

}
