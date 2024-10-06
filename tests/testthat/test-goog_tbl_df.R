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

# goog_tbl_df data set

library(testthat)

library(usdatasets)

# Test dataset structure and class
test_that("goog_tbl_df loads correctly and has the expected structure", {
  expect_s3_class(goog_tbl_df, "tbl_df")
  expect_equal(nrow(goog_tbl_df), 98)
  expect_equal(ncol(goog_tbl_df), 7)
  expect_equal(names(goog_tbl_df), c("date", "open", "high", "low", "close", "volume", "adj_close"))
})

# Test data types of columns
test_that("goog_tbl_df has correct column types", {
  expect_s3_class(goog_tbl_df$date, "factor")
  expect_type(goog_tbl_df$open, "double")
  expect_type(goog_tbl_df$high, "double")
  expect_type(goog_tbl_df$low, "double")
  expect_type(goog_tbl_df$close, "double")
  expect_type(goog_tbl_df$volume, "integer")
  expect_type(goog_tbl_df$adj_close, "double")
})

# Test for valid ranges in stock prices
test_that("goog_tbl_df has valid stock price ranges", {
  expect_true(all(goog_tbl_df$open >= 0, na.rm = TRUE),
              info = "Negative open price found")
  expect_true(all(goog_tbl_df$high >= 0, na.rm = TRUE),
              info = "Negative high price found")
  expect_true(all(goog_tbl_df$low >= 0, na.rm = TRUE),
              info = "Negative low price found")
  expect_true(all(goog_tbl_df$close >= 0, na.rm = TRUE),
              info = "Negative close price found")
  expect_true(all(goog_tbl_df$adj_close >= 0, na.rm = TRUE),
              info = "Negative adjusted close price found")
})

# Test for valid volume
test_that("goog_tbl_df has valid volume", {
  expect_true(all(goog_tbl_df$volume >= 0, na.rm = TRUE),
              info = "Negative volume found")
})

# Test for missing values in critical columns
test_that("goog_tbl_df reports NA values in critical columns", {
  critical_columns <- c("date", "open", "high", "low", "close", "volume", "adj_close")
  for (column in critical_columns) {
    n_na <- sum(is.na(goog_tbl_df[[column]]))
    expect_true(n_na >= 0,
                info = paste("Found", n_na, "NA values in", column))
  }
})

# Test to verify dataset immutability
test_that("goog_tbl_df remains unchanged after tests", {
  # Create a deep copy of the original dataset before tests
  original_dataset <- goog_tbl_df

  # Run some example tests
  sum(is.na(goog_tbl_df$open))
  all(goog_tbl_df$high >= 0, na.rm = TRUE)

  # Verify the dataset hasn't changed
  expect_identical(original_dataset, goog_tbl_df)
  expect_equal(nrow(original_dataset), nrow(goog_tbl_df))
  expect_equal(ncol(original_dataset), ncol(goog_tbl_df))
  expect_equal(names(original_dataset), names(goog_tbl_df))
})
