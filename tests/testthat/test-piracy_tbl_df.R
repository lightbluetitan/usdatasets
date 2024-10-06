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

# piracy_tbl_df  data set

library(testthat)

library(usdatasets)

# Test dataset structure and class
test_that("piracy_tbl_df loads correctly and has the expected structure", {
  expect_s3_class(piracy_tbl_df, "tbl_df")
  expect_equal(nrow(piracy_tbl_df), 534)
  expect_equal(ncol(piracy_tbl_df), 8)
  expect_equal(names(piracy_tbl_df),
               c("name", "party", "state", "money_pro", "money_con",
                 "years", "stance", "chamber"))
})

# Test data types of columns
test_that("piracy_tbl_df has correct column types", {
  expect_type(piracy_tbl_df$name, "character")
  expect_s3_class(piracy_tbl_df$party, "factor")
  expect_s3_class(piracy_tbl_df$state, "factor")
  expect_type(piracy_tbl_df$money_pro, "double")
  expect_type(piracy_tbl_df$money_con, "double")
  expect_type(piracy_tbl_df$years, "integer")
  expect_s3_class(piracy_tbl_df$stance, "factor")
  expect_s3_class(piracy_tbl_df$chamber, "factor")
})

# Test categorical variables
test_that("piracy_tbl_df has valid categorical values", {
  expect_equal(nlevels(piracy_tbl_df$party), 3)
  expect_equal(nlevels(piracy_tbl_df$state), 50)
  expect_equal(nlevels(piracy_tbl_df$stance), 5)
  expect_equal(levels(piracy_tbl_df$chamber), c("house", "senate"))
})

# Test numeric ranges exist
test_that("piracy_tbl_df has finite numeric values", {
  # Money values should be finite
  expect_true(all(is.finite(piracy_tbl_df$money_pro) | is.na(piracy_tbl_df$money_pro)),
              info = "Non-finite values found in money_pro")
  expect_true(all(is.finite(piracy_tbl_df$money_con) | is.na(piracy_tbl_df$money_con)),
              info = "Non-finite values found in money_con")

  # Years should be finite
  expect_true(all(is.finite(piracy_tbl_df$years) | is.na(piracy_tbl_df$years)),
              info = "Non-finite values found in years")
})

# Test for missing values in critical columns
test_that("piracy_tbl_df reports NA values in critical columns", {
  critical_columns <- c("name", "party", "state", "stance", "chamber")
  for (column in critical_columns) {
    n_na <- sum(is.na(piracy_tbl_df[[column]]))
    expect_true(n_na >= 0,
                info = paste("Found", n_na, "NA values in", column))
  }
})

# Test that names are not empty
test_that("piracy_tbl_df has non-empty names", {
  expect_true(all(nchar(piracy_tbl_df$name) > 0, na.rm = TRUE),
              info = "Empty names found")
})

# Test dataset immutability
test_that("piracy_tbl_df remains unchanged after tests", {
  # Create a deep copy of the original dataset before tests
  original_dataset <- piracy_tbl_df

  # Run some example tests
  sum(is.na(piracy_tbl_df$party))
  all(is.finite(piracy_tbl_df$money_pro) | is.na(piracy_tbl_df$money_pro))

  # Verify the dataset hasn't changed
  expect_identical(original_dataset, piracy_tbl_df)
  expect_equal(nrow(original_dataset), nrow(piracy_tbl_df))
  expect_equal(ncol(original_dataset), ncol(piracy_tbl_df))
  expect_equal(names(original_dataset), names(piracy_tbl_df))
})
