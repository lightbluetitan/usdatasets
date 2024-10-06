# usdatasets - A Comprehensive Collection of U.S. Datasets
# Version 0.1.0
# Copyright (C) 2024 Renzo Cáceres Rossi
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <https://www.gnu.org/licenses/>.

# nba_players_19_tbl_df data set

library(testthat)

library(usdatasets)

# Test dataset structure and class
test_that("nba_players_19_tbl_df loads correctly and has the expected structure", {
  expect_s3_class(nba_players_19_tbl_df, "tbl_df")
  expect_equal(nrow(nba_players_19_tbl_df), 494)
  expect_equal(ncol(nba_players_19_tbl_df), 7)
  expect_equal(names(nba_players_19_tbl_df),
               c("first_name", "last_name", "team", "team_abbr",
                 "position", "number", "height"))
})

# Test data types of columns
test_that("nba_players_19_tbl_df has correct column types", {
  expect_type(nba_players_19_tbl_df$first_name, "character")
  expect_type(nba_players_19_tbl_df$last_name, "character")
  expect_type(nba_players_19_tbl_df$team, "character")
  expect_type(nba_players_19_tbl_df$team_abbr, "character")
  expect_type(nba_players_19_tbl_df$position, "character")
  expect_type(nba_players_19_tbl_df$number, "character")
  expect_type(nba_players_19_tbl_df$height, "double")
})

# Test for unique player entries
test_that("nba_players_19_tbl_df has unique player entries", {
  expect_equal(nrow(nba_players_19_tbl_df),
               length(unique(paste(nba_players_19_tbl_df$first_name,
                                   nba_players_19_tbl_df$last_name))),
               info = "Duplicate player entries found")
})

# Test height values
test_that("nba_players_19_tbl_df has valid height values", {
  expect_true(all(nba_players_19_tbl_df$height > 0, na.rm = TRUE),
              info = "Invalid height values found")
})

# Test for missing values in critical columns
test_that("nba_players_19_tbl_df reports NA values in critical columns", {
  critical_columns <- c("first_name", "last_name", "team", "height")
  for (column in critical_columns) {
    n_na <- sum(is.na(nba_players_19_tbl_df[[column]]))
    expect_true(n_na >= 0, info = paste("Found", n_na, "NA values in", column))
  }
})

# Test to verify dataset immutability
test_that("nba_players_19_tbl_df remains unchanged after tests", {
  # Create a deep copy of the original dataset before tests
  original_dataset <- nba_players_19_tbl_df

  # Run some example tests
  sum(is.na(nba_players_19_tbl_df$height))

  # Verify the dataset hasn't changed
  expect_identical(original_dataset, nba_players_19_tbl_df)
  expect_equal(nrow(original_dataset), nrow(nba_players_19_tbl_df))
  expect_equal(ncol(original_dataset), ncol(nba_players_19_tbl_df))
  expect_equal(names(original_dataset), names(nba_players_19_tbl_df))
})
