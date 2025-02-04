% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data.r
\docType{data}
\name{training}
\alias{training}
\title{Training data and results}
\format{
An object of class \code{data.frame} with 7179 rows and 19 columns.
}
\usage{
training
}
\description{
Training data and results
}
\examples{
data(training)
library(ggplot2)
library(magrittr)
training \%>\%
  ggplot(aes(x = quality_pred, fill = quality)) +
    geom_histogram(binwidth = 0.025)
}
\keyword{datasets}
