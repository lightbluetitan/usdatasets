% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data-documentation.R
\name{mlb_players_18_tbl_df}
\alias{mlb_players_18_tbl_df}
\title{Batter Statistics for 2018 Major League Baseball (MLB) Season}
\format{
A tibble with 1270 observations and 19 variables:
\describe{
  \item{name}{Character string representing the name of the player.}
  \item{team}{Character string indicating the team the player belongs to.}
  \item{position}{Character string indicating the position played by the player.}
  \item{games}{Integer representing the number of games played.}
  \item{AB}{Integer indicating the number of at-bats.}
  \item{R}{Integer representing the number of runs scored.}
  \item{H}{Integer representing the number of hits.}
  \item{doubles}{Integer indicating the number of doubles hit.}
  \item{triples}{Integer indicating the number of triples hit.}
  \item{HR}{Integer representing the number of home runs hit.}
  \item{RBI}{Integer indicating the number of runs batted in.}
  \item{walks}{Integer indicating the number of walks received.}
  \item{strike_outs}{Integer indicating the number of strikeouts.}
  \item{stolen_bases}{Integer representing the number of stolen bases.}
  \item{caught_stealing_base}{Integer indicating the number of times caught stealing.}
  \item{AVG}{Numeric representing the batting average.}
  \item{OBP}{Numeric representing the on-base percentage.}
  \item{SLG}{Numeric representing the slugging percentage.}
  \item{OPS}{Numeric representing the on-base plus slugging percentage.}
}
}
\source{
Data from Major League Baseball (MLB) player statistics for the 2018 season
}
\usage{
data(mlb_players_18_tbl_df)
}
\description{
The dataset name has been changed to 'mlb_players_18_tbl_df' to avoid confusion with other packages
in the R ecosystem. This naming convention helps distinguish this dataset as part of the 'usdatasets'
package and identifies it as a tibble. The original content of the dataset has not been modified.
}
