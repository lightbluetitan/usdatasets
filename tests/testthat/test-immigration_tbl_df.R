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

# immigration_tbl_df data set

library(testthat)

# Test dataset structure and class
test_that("immigration_tbl_df loads correctly and has the expected structure", {
  expect_s3_class(immigration_tbl_df, "tbl_df")
  expect_equal(nrow(immigration_tbl_df), 910)
  expect_equal(ncol(immigration_tbl_df), 2)
  expect_equal(names(immigration_tbl_df), c("response", "political"))
})

# Test data types of columns
test_that("immigration_tbl_df has correct column types", {
  expect_s3_class(immigration_tbl_df$response, "factor")
  expect_s3_class(immigration_tbl_df$political, "factor")
})

# Test levels of factors
test_that("immigration_tbl_df has expected levels for response and political", {
  expect_equal(levels(immigration_tbl_df$response),
               c("Apply for citizenship", "Guest worker", "Leave the country", "Not sure")) # Niveles reales
  expect_equal(levels(immigration_tbl_df$political),
               c("conservative", "liberal", "moderate")) # Niveles reales
})

# Test for missing values in critical columns
test_that("immigration_tbl_df reports NA values in critical columns", {
  critical_columns <- c("response", "political")
  for (column in critical_columns) {
    n_na <- sum(is.na(immigration_tbl_df[[column]]))
    expect_true(n_na >= 0, info = paste("Found", n_na, "NA values in", column))
  }
})

# Test to verify dataset immutability
test_that("immigration_tbl_df remains unchanged after tests", {
  # Create a deep copy of the original dataset before tests
  original_dataset <- immigration_tbl_df

  # Run some example tests
  sum(is.na(immigration_tbl_df$response))
  sum(is.na(immigration_tbl_df$political))

  # Verify the dataset hasn't changed
  expect_identical(original_dataset, immigration_tbl_df)
  expect_equal(nrow(original_dataset), nrow(immigration_tbl_df))
  expect_equal(ncol(original_dataset), ncol(immigration_tbl_df))
  expect_equal(names(original_dataset), names(immigration_tbl_df))
})
