% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/function.R
\name{group_entities}
\alias{group_entities}
\title{Group a sequence of entities in a POS dataframe}
\usage{
group_entities(DF)
}
\arguments{
\item{DF}{A data.frame generated by spacyr::spacy_parse. Crated by spacy_parse()}
}
\description{
Group a data.frame generated by spacyr::spacy_parse, if there is a sequence of entities
}
\examples{
# example in English language
t <- "UnitedHealthcare boss Brian Thompson, 50, was fatally shot in the back on Wednesday morning outside the Hilton hotel in Midtown Manhattan... Investigators are using surveillance photos, bullet casings with cryptic messages written on them, and the suspect's movements to track him down. They are also working with the FBI and authorities in other states as the search expands beyond New York"
spacyr::spacy_initialize(model = "en_core_web_lg")
spacyr::spacy_parse(t, dependency = T) |> group_entities()

# example in Portuguese language
spacyr::spacy_initialize(model = "pt_core_news_lg")
"Maria Jana ama John Smith e Maria é amada por Joaquim de Souza" |>
  spacyr::spacy_parse(dependency = T) |>
  group_entities()
}
