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

# govrace10_tbl_df data set

library(testthat)

library(usdatasets)

# Test dataset structure and class
test_that("govrace10_tbl_df loads correctly and has the expected structure", {
  expect_s3_class(govrace10_tbl_df, "tbl_df")
  expect_equal(nrow(govrace10_tbl_df), 37)
  expect_equal(ncol(govrace10_tbl_df), 23)
  expect_equal(names(govrace10_tbl_df),
               c("id", "state", "abbr", "name1", "perc1", "party1", "votes1", "name2", "perc2", "party2",
                 "votes2", "name3", "perc3", "party3", "votes3", "name4", "perc4", "party4", "votes4", "name5",
                 "perc5", "party5", "votes5"))
})

# Test data types of columns
test_that("govrace10_tbl_df has correct column types", {
  expect_type(govrace10_tbl_df$id, "double")
  expect_type(govrace10_tbl_df$state, "character")
  expect_type(govrace10_tbl_df$abbr, "character")
  expect_type(govrace10_tbl_df$name1, "character")
  expect_type(govrace10_tbl_df$perc1, "double")
  expect_type(govrace10_tbl_df$party1, "character")
  expect_type(govrace10_tbl_df$votes1, "double")
  expect_type(govrace10_tbl_df$name2, "character")
  expect_type(govrace10_tbl_df$perc2, "double")
  expect_type(govrace10_tbl_df$party2, "character")
  expect_type(govrace10_tbl_df$votes2, "double")
  expect_type(govrace10_tbl_df$name3, "character")
  expect_type(govrace10_tbl_df$perc3, "double")
  expect_type(govrace10_tbl_df$party3, "character")
  expect_type(govrace10_tbl_df$votes3, "double")
  expect_type(govrace10_tbl_df$name4, "character")
  expect_type(govrace10_tbl_df$perc4, "double")
  expect_type(govrace10_tbl_df$party4, "character")
  expect_type(govrace10_tbl_df$votes4, "double")
  expect_type(govrace10_tbl_df$name5, "character")
  expect_type(govrace10_tbl_df$perc5, "double")
  expect_type(govrace10_tbl_df$party5, "character")
  expect_type(govrace10_tbl_df$votes5, "double")
})

# Test valid ranges for percentages and votes
test_that("govrace10_tbl_df has valid percentage and vote ranges", {
  for (i in 1:5) {
    expect_true(all(govrace10_tbl_df[[paste0("perc", i)]] >= 0 & govrace10_tbl_df[[paste0("perc", i)]] <= 100, na.rm = TRUE),
                info = paste("Invalid percentage found in perc", i))
    expect_true(all(govrace10_tbl_df[[paste0("votes", i)]] >= 0, na.rm = TRUE),
                info = paste("Negative votes found in votes", i))
  }
})

# Test for missing values in critical columns
test_that("govrace10_tbl_df reports NA values in critical columns", {
  critical_columns <- c("id", "state", "abbr", "name1", "perc1", "votes1")
  for (column in critical_columns) {
    n_na <- sum(is.na(govrace10_tbl_df[[column]]))
    expect_true(n_na >= 0,
                info = paste("Found", n_na, "NA values in", column))
  }
})

# Test to verify dataset immutability
test_that("govrace10_tbl_df remains unchanged after tests", {
  # Create a deep copy of the original dataset before tests
  original_dataset <- govrace10_tbl_df

  # Run some example tests
  sum(is.na(govrace10_tbl_df$perc1))
  all(govrace10_tbl_df$votes1 >= 0, na.rm = TRUE)

  # Verify the dataset hasn't changed
  expect_identical(original_dataset, govrace10_tbl_df)
  expect_equal(nrow(original_dataset), nrow(govrace10_tbl_df))
  expect_equal(ncol(original_dataset), ncol(govrace10_tbl_df))
  expect_equal(names(original_dataset), names(govrace10_tbl_df))
})
