% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/extract_na_column.r
\name{extract_na_row}
\alias{extract_na_row}
\title{Feature extraction: percentage of missing values by row}
\usage{
extract_na_row(x3p)
}
\arguments{
\item{x3p}{scan in x3p format}
}
\value{
percentage of missing values in each row of the scan's surface matrix
}
\description{
A good quality of 3d scans is crucial for an assessment of similarity of
striation marks between different bullets.
Here, we measure the percentage of missing values in the scan. Generally,
a higher percentage of missing values is associated with a lower scan quality.
}
\examples{
data(fau277_bb_l2) # bad scan
nas_bad <- extract_na_row(fau277_bb_l2)
plot(nas_bad)
# interesting pattern: we would expect a similar pattern for all scans
# (going from very low percentage of missing values at the top of a scan to a
# fairly high percentage along the bottom)

nas_good <- extract_na_row(fau001_ba_l1) # excellent scan
plot(nas_good) # similar pattern to above, but low values for most of the scan
}
