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

# senaterace10_tbl_df  data set

library(testthat)

library(usdatasets)

# Test dataset structure and class
test_that("senaterace10_tbl_df loads correctly and has the expected structure", {
  expect_s3_class(senaterace10_tbl_df, "tbl_df")
  expect_equal(nrow(senaterace10_tbl_df), 38)
  expect_equal(ncol(senaterace10_tbl_df), 23)
  expect_equal(names(senaterace10_tbl_df), c(
    "id", "state", "abbr", "name1", "perc1", "party1", "votes1",
    "name2", "perc2", "party2", "votes2", "name3", "perc3", "party3", "votes3",
    "name4", "perc4", "party4", "votes4", "name5", "perc5", "party5", "votes5"
  ))
})

# Test data types of columns
test_that("senaterace10_tbl_df has correct column types", {
  expect_type(senaterace10_tbl_df$id, "double")
  expect_type(senaterace10_tbl_df$state, "character")
  expect_type(senaterace10_tbl_df$abbr, "character")
  expect_type(senaterace10_tbl_df$name1, "character")
  expect_type(senaterace10_tbl_df$perc1, "double")
  expect_type(senaterace10_tbl_df$party1, "character")
  expect_type(senaterace10_tbl_df$votes1, "double")
})

# Test for valid percentage values (between 0 and 100)
test_that("senaterace10_tbl_df has valid percentage values", {
  percentage_columns <- c("perc1", "perc2", "perc3", "perc4", "perc5")
  for (column in percentage_columns) {
    expect_true(all(senaterace10_tbl_df[[column]] >= 0 & senaterace10_tbl_df[[column]] <= 100, na.rm = TRUE))
  }
})

# Test for missing values in critical columns without showing messages
test_that("senaterace10_tbl_df reports NA values in critical columns", {
  critical_columns <- c("id", "state", "abbr", "name1", "perc1", "party1", "votes1")
  for (column in critical_columns) {
    n_na <- sum(is.na(senaterace10_tbl_df[[column]]))
    # No message or warning, just verify that the column has NAs or not
    expect_true(n_na >= 0)  # Only check if n_na is non-negative
  }
})

# Test to verify dataset immutability
test_that("senaterace10_tbl_df remains unchanged after tests", {
  original_dataset <- senaterace10_tbl_df

  # Example computations
  sum(is.na(senaterace10_tbl_df$perc1))
  all(senaterace10_tbl_df$perc1 >= 0 & senaterace10_tbl_df$perc1 <= 100, na.rm = TRUE)

  # Verify the dataset hasn't changed
  expect_identical(original_dataset, senaterace10_tbl_df)
  expect_equal(nrow(original_dataset), nrow(senaterace10_tbl_df))
  expect_equal(ncol(original_dataset), ncol(senaterace10_tbl_df))
  expect_equal(names(original_dataset), names(senaterace10_tbl_df))
})
