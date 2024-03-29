% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dateCast.R
\name{dateCast}
\alias{dateCast}
\title{Cast a date column to data frame returned by the bls_api() function}
\usage{
dateCast(api_df = NULL, dt_format = NULL)
}
\arguments{
\item{api_df}{The data frame you wish to cast a date column to. Be sure the data frame contains 'year' and 'period' columns as returned
by the \code{bls_api()} function.}

\item{dt_format}{A character string containing a valid date format. The default will return the ISO 8601 date format.}
}
\value{
A tibble from the source \code{api_df} with an additional date column based on the date format given in \code{dt_format}.
}
\description{
A helper function to create a continuous date from Year and Period columns.
}
\examples{

## Cast a date column to data frame returned by the bls_api() function.
df <- bls_api("LAUCN040010000000005") \%>\%
dateCast()


}
