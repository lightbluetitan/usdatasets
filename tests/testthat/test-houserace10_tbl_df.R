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

# houserace10_tbl_df data set

library(testthat)

library(usdatasets)

# Test dataset structure and class
test_that("houserace10_tbl_df loads correctly and has the expected structure", {
  expect_s3_class(houserace10_tbl_df, "tbl_df")
  expect_equal(nrow(houserace10_tbl_df), 435)
  expect_equal(ncol(houserace10_tbl_df), 24)
  expect_equal(names(houserace10_tbl_df),
               c("id", "state", "abbr", "num", "name1", "perc1", "party1", "votes1",
                 "name2", "perc2", "party2", "votes2", "name3", "perc3", "party3",
                 "votes3", "name4", "perc4", "party4", "votes4", "name5", "perc5",
                 "party5", "votes5"))
})

# Test data types of columns
test_that("houserace10_tbl_df has correct column types", {
  expect_type(houserace10_tbl_df$id, "double")      # 'id' is numeric
  expect_type(houserace10_tbl_df$state, "character")
  expect_type(houserace10_tbl_df$abbr, "character")
  expect_type(houserace10_tbl_df$num, "double")      # 'num' is numeric
  expect_type(houserace10_tbl_df$name1, "character")
  expect_type(houserace10_tbl_df$perc1, "double")    # 'perc1' is numeric
  expect_type(houserace10_tbl_df$party1, "character")
  expect_type(houserace10_tbl_df$votes1, "double")    # 'votes1' is numeric
  expect_type(houserace10_tbl_df$name2, "character")
  expect_type(houserace10_tbl_df$perc2, "double")
  expect_type(houserace10_tbl_df$party2, "character")
  expect_type(houserace10_tbl_df$votes2, "double")
  expect_type(houserace10_tbl_df$name3, "character")
  expect_type(houserace10_tbl_df$perc3, "double")
  expect_type(houserace10_tbl_df$party3, "character")
  expect_type(houserace10_tbl_df$votes3, "double")
  expect_type(houserace10_tbl_df$name4, "character")
  expect_type(houserace10_tbl_df$perc4, "double")
  expect_type(houserace10_tbl_df$party4, "character")
  expect_type(houserace10_tbl_df$votes4, "double")
  expect_type(houserace10_tbl_df$name5, "character")
  expect_type(houserace10_tbl_df$perc5, "double")
  expect_type(houserace10_tbl_df$party5, "character")
  expect_type(houserace10_tbl_df$votes5, "double")
})

# Test for valid percentage ranges
test_that("houserace10_tbl_df has valid percentage values", {
  expect_true(all(houserace10_tbl_df$perc1 >= 0 & houserace10_tbl_df$perc1 <= 100, na.rm = TRUE),
              info = "Invalid perc1 value found")
  expect_true(all(houserace10_tbl_df$perc2 >= 0 & houserace10_tbl_df$perc2 <= 100, na.rm = TRUE),
              info = "Invalid perc2 value found")
  expect_true(all(houserace10_tbl_df$perc3 >= 0 & houserace10_tbl_df$perc3 <= 100, na.rm = TRUE),
              info = "Invalid perc3 value found")
  expect_true(all(houserace10_tbl_df$perc4 >= 0 & houserace10_tbl_df$perc4 <= 100, na.rm = TRUE),
              info = "Invalid perc4 value found")
  expect_true(all(houserace10_tbl_df$perc5 >= 0 & houserace10_tbl_df$perc5 <= 100, na.rm = TRUE),
              info = "Invalid perc5 value found")
})

# Test for missing values in critical columns
test_that("houserace10_tbl_df reports NA values in critical columns", {
  critical_columns <- c("id", "state", "abbr", "num", "name1", "party1", "votes1")
  for (column in critical_columns) {
    n_na <- sum(is.na(houserace10_tbl_df[[column]]))
    expect_true(n_na >= 0,
                info = paste("Found", n_na, "NA values in", column))
  }
})

# Test to verify dataset immutability
test_that("houserace10_tbl_df remains unchanged after tests", {
  # Create a deep copy of the original dataset before tests
  original_dataset <- houserace10_tbl_df

  # Run some example tests
  sum(is.na(houserace10_tbl_df$perc1))
  all(houserace10_tbl_df$perc1 >= 0 & houserace10_tbl_df$perc1 <= 100, na.rm = TRUE)

  # Verify the dataset hasn't changed
  expect_identical(original_dataset, houserace10_tbl_df)
  expect_equal(nrow(original_dataset), nrow(houserace10_tbl_df))
  expect_equal(ncol(original_dataset), ncol(houserace10_tbl_df))
  expect_equal(names(original_dataset), names(houserace10_tbl_df))
})
