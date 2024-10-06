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

# leg_mari_tbl_df data set

library(testthat)

library(usdatasets)

# Test dataset structure and class
test_that("leg_mari_tbl_df loads correctly and has the expected structure", {
  expect_s3_class(leg_mari_tbl_df, "tbl_df")
  expect_equal(nrow(leg_mari_tbl_df), 119)
  expect_equal(ncol(leg_mari_tbl_df), 1)
  expect_equal(names(leg_mari_tbl_df), "response")
})

# Test data types of columns
test_that("leg_mari_tbl_df has correct column types", {
  expect_s3_class(leg_mari_tbl_df$response, "factor")
})

# Test levels of the factor
test_that("leg_mari_tbl_df has expected levels for response", {
  expect_equal(levels(leg_mari_tbl_df$response), c("oppose", "support")) # Ajuste aquí
})

# Test for missing values in critical columns
test_that("leg_mari_tbl_df reports NA values in critical columns", {
  critical_columns <- c("response")
  for (column in critical_columns) {
    n_na <- sum(is.na(leg_mari_tbl_df[[column]]))
    expect_true(n_na >= 0, info = paste("Found", n_na, "NA values in", column))
  }
})

# Test to verify dataset immutability
test_that("leg_mari_tbl_df remains unchanged after tests", {
  # Create a deep copy of the original dataset before tests
  original_dataset <- leg_mari_tbl_df

  # Run some example tests
  sum(is.na(leg_mari_tbl_df$response))

  # Verify the dataset hasn't changed
  expect_identical(original_dataset, leg_mari_tbl_df)
  expect_equal(nrow(original_dataset), nrow(leg_mari_tbl_df))
  expect_equal(ncol(original_dataset), ncol(leg_mari_tbl_df))
  expect_equal(names(original_dataset), names(leg_mari_tbl_df))
})
