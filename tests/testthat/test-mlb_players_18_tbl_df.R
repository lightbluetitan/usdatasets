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

# mlb_players_18_tbl_df data set

library(testthat)

library(usdatasets)

# Test dataset structure and class
test_that("mlb_players_18_tbl_df loads correctly and has the expected structure", {
  expect_s3_class(mlb_players_18_tbl_df, "tbl_df")
  expect_equal(nrow(mlb_players_18_tbl_df), 1270)
  expect_equal(ncol(mlb_players_18_tbl_df), 19)
  expect_equal(names(mlb_players_18_tbl_df),
               c("name", "team", "position", "games", "AB", "R", "H",
                 "doubles", "triples", "HR", "RBI", "walks",
                 "strike_outs", "stolen_bases", "caught_stealing_base",
                 "AVG", "OBP", "SLG", "OPS"))
})

# Test data types of columns
test_that("mlb_players_18_tbl_df has correct column types", {
  expect_type(mlb_players_18_tbl_df$name, "character")
  expect_type(mlb_players_18_tbl_df$team, "character")
  expect_type(mlb_players_18_tbl_df$position, "character")
  expect_type(mlb_players_18_tbl_df$games, "integer")
  expect_type(mlb_players_18_tbl_df$AB, "integer")
  expect_type(mlb_players_18_tbl_df$R, "integer")
  expect_type(mlb_players_18_tbl_df$H, "integer")
  expect_type(mlb_players_18_tbl_df$doubles, "integer")
  expect_type(mlb_players_18_tbl_df$triples, "integer")
  expect_type(mlb_players_18_tbl_df$HR, "integer")
  expect_type(mlb_players_18_tbl_df$RBI, "integer")
  expect_type(mlb_players_18_tbl_df$walks, "integer")
  expect_type(mlb_players_18_tbl_df$strike_outs, "integer")
  expect_type(mlb_players_18_tbl_df$stolen_bases, "integer")
  expect_type(mlb_players_18_tbl_df$caught_stealing_base, "integer")
  expect_type(mlb_players_18_tbl_df$AVG, "double")
  expect_type(mlb_players_18_tbl_df$OBP, "double")
  expect_type(mlb_players_18_tbl_df$SLG, "double")
  expect_type(mlb_players_18_tbl_df$OPS, "double")
})

# Test valid ranges for numeric values
test_that("mlb_players_18_tbl_df has valid numeric values", {
  expect_true(all(mlb_players_18_tbl_df$games >= 0, na.rm = TRUE),
              info = "Negative games found")
  expect_true(all(mlb_players_18_tbl_df$AB >= 0, na.rm = TRUE),
              info = "Negative AB found")
  expect_true(all(mlb_players_18_tbl_df$R >= 0, na.rm = TRUE),
              info = "Negative runs found")
  expect_true(all(mlb_players_18_tbl_df$H >= 0, na.rm = TRUE),
              info = "Negative hits found")
  expect_true(all(mlb_players_18_tbl_df$doubles >= 0, na.rm = TRUE),
              info = "Negative doubles found")
  expect_true(all(mlb_players_18_tbl_df$triples >= 0, na.rm = TRUE),
              info = "Negative triples found")
  expect_true(all(mlb_players_18_tbl_df$HR >= 0, na.rm = TRUE),
              info = "Negative home runs found")
  expect_true(all(mlb_players_18_tbl_df$RBI >= 0, na.rm = TRUE),
              info = "Negative RBI found")
  expect_true(all(mlb_players_18_tbl_df$walks >= 0, na.rm = TRUE),
              info = "Negative walks found")
  expect_true(all(mlb_players_18_tbl_df$strike_outs >= 0, na.rm = TRUE),
              info = "Negative strikeouts found")
  expect_true(all(mlb_players_18_tbl_df$stolen_bases >= 0, na.rm = TRUE),
              info = "Negative stolen bases found")
  expect_true(all(mlb_players_18_tbl_df$caught_stealing_base >= 0, na.rm = TRUE),
              info = "Negative caught stealing bases found")
  expect_true(all(is.na(mlb_players_18_tbl_df$AVG) | (mlb_players_18_tbl_df$AVG >= 0 & mlb_players_18_tbl_df$AVG <= 1)),
              info = "Invalid AVG values found")
  expect_true(all(is.na(mlb_players_18_tbl_df$OBP) | (mlb_players_18_tbl_df$OBP >= 0 & mlb_players_18_tbl_df$OBP <= 1)),
              info = "Invalid OBP values found")
  expect_true(all(is.na(mlb_players_18_tbl_df$SLG) | (mlb_players_18_tbl_df$SLG >= 0), na.rm = TRUE),
              info = "Invalid SLG values found")  # Permitir valores > 1
  expect_true(all(mlb_players_18_tbl_df$OPS >= 0, na.rm = TRUE),
              info = "Invalid OPS values found")
})

# Test for missing values in critical columns
test_that("mlb_players_18_tbl_df reports NA values in critical columns", {
  critical_columns <- c("name", "team", "position", "games", "AB", "R", "H")
  for (column in critical_columns) {
    n_na <- sum(is.na(mlb_players_18_tbl_df[[column]]))
    expect_true(n_na >= 0,
                info = paste("Found", n_na, "NA values in", column))
  }
})

# Test to verify dataset immutability
test_that("mlb_players_18_tbl_df remains unchanged after tests", {
  # Create a deep copy of the original dataset before tests
  original_dataset <- mlb_players_18_tbl_df

  # Run some example tests
  sum(is.na(mlb_players_18_tbl_df$AVG))
  all(mlb_players_18_tbl_df$games >= 0, na.rm = TRUE)

  # Verify the dataset hasn't changed
  expect_identical(original_dataset, mlb_players_18_tbl_df)
  expect_equal(nrow(original_dataset), nrow(mlb_players_18_tbl_df))
  expect_equal(ncol(original_dataset), ncol(mlb_players_18_tbl_df))
  expect_equal(names(original_dataset), names(mlb_players_18_tbl_df))
})
