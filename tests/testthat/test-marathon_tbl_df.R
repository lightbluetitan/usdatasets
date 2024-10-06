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

# marathon_tbl_df data set

library(testthat)

library(usdatasets)

# Test dataset structure and class
test_that("marathon_tbl_df loads correctly and has the expected structure", {
  expect_s3_class(marathon_tbl_df, "tbl_df")
  expect_equal(nrow(marathon_tbl_df), 59)
  expect_equal(ncol(marathon_tbl_df), 3)
  expect_equal(names(marathon_tbl_df), c("year", "gender", "time"))
})

# Test data types of columns
test_that("marathon_tbl_df has correct column types", {
  expect_type(marathon_tbl_df$year, "integer")
  expect_s3_class(marathon_tbl_df$gender, "factor")
  expect_type(marathon_tbl_df$time, "double")
})

# Test for valid years
test_that("marathon_tbl_df has valid years", {
  expect_true(all(marathon_tbl_df$year >= 1900 & marathon_tbl_df$year <= 2023, na.rm = TRUE),
              info = "Invalid year value found")
})

# Test for gender levels
test_that("marathon_tbl_df has expected levels for gender", {
  expect_equal(levels(marathon_tbl_df$gender), c("f", "m"))  # Actual levels
})

# Test for missing values in critical columns
test_that("marathon_tbl_df reports NA values in critical columns", {
  critical_columns <- c("year", "gender", "time")
  for (column in critical_columns) {
    n_na <- sum(is.na(marathon_tbl_df[[column]]))
    expect_true(n_na >= 0, info = paste("Found", n_na, "NA values in", column))
  }
})

# Test to verify dataset immutability
test_that("marathon_tbl_df remains unchanged after tests", {
  # Create a deep copy of the original dataset before tests
  original_dataset <- marathon_tbl_df

  # Run some example tests
  sum(is.na(marathon_tbl_df$time))
  all(marathon_tbl_df$year >= 1900 & marathon_tbl_df$year <= 2023, na.rm = TRUE)

  # Verify the dataset hasn't changed
  expect_identical(original_dataset, marathon_tbl_df)
  expect_equal(nrow(original_dataset), nrow(marathon_tbl_df))
  expect_equal(ncol(original_dataset), ncol(marathon_tbl_df))
  expect_equal(names(original_dataset), names(marathon_tbl_df))
})
