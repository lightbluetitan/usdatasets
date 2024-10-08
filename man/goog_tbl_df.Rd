% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data-documentation.R
\name{goog_tbl_df}
\alias{goog_tbl_df}
\title{Google stock data}
\format{
A tibble with 98 observations and 7 variables:
\describe{
  \item{date}{Date of the stock price observation (factor with 98 levels).}
  \item{open}{Opening price of the stock (numeric).}
  \item{high}{Highest price during the trading session (numeric).}
  \item{low}{Lowest price during the trading session (numeric).}
  \item{close}{Closing price of the stock (numeric).}
  \item{volume}{Number of shares traded (integer).}
  \item{adj_close}{Adjusted closing price of the stock (numeric).}
}
}
\source{
Google Stock Market Data
}
\usage{
data(goog_tbl_df)
}
\description{
The dataset name has been changed to 'goog_tbl_df' to avoid confusion with other
packages in the R ecosystem from which datasets have been sourced. This naming convention helps
distinguish this dataset as part of the 'usdatasets' package and assists users in identifying
its specific characteristics. The suffix 'tbl_df' identifies the dataset as a tibble. The original
content of the dataset has not been modified in any way.
}
