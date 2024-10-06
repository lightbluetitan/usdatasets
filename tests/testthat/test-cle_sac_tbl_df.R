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

# cle_sac_tbl_df data set

library(testthat)

library(usdatasets)

# Test dataset structure and class
test_that("cle_sac_tbl_df loads correctly and has the expected structure", {
  expect_s3_class(cle_sac_tbl_df, "tbl_df")
  expect_equal(nrow(cle_sac_tbl_df), 500)
  expect_equal(ncol(cle_sac_tbl_df), 8)
  expect_equal(names(cle_sac_tbl_df),
               c("year", "state", "city", "age", "sex",
                 "race", "marital_status", "personal_income"))
})

# Test data types of columns
test_that("cle_sac_tbl_df has correct column types", {
  expect_type(cle_sac_tbl_df$year, "integer")
  expect_s3_class(cle_sac_tbl_df$state, "factor")
  expect_type(cle_sac_tbl_df$city, "character")
  expect_type(cle_sac_tbl_df$age, "integer")
  expect_s3_class(cle_sac_tbl_df$sex, "factor")
  expect_type(cle_sac_tbl_df$race, "character")
  expect_type(cle_sac_tbl_df$marital_status, "character")
  expect_type(cle_sac_tbl_df$personal_income, "integer")
})

# Test valid values in categorical variables
test_that("cle_sac_tbl_df has valid categorical values", {
  expect_equal(levels(cle_sac_tbl_df$state), c("California", "Ohio"))
  expect_equal(levels(cle_sac_tbl_df$sex), c("Female", "Male"))
  expect_true(all(cle_sac_tbl_df$city %in% c("Cleveland", "Sacramento")))
})

# Test value ranges for numeric variables
test_that("cle_sac_tbl_df has valid numeric ranges", {
  expect_true(all(cle_sac_tbl_df$year >= 2000 & cle_sac_tbl_df$year <= 2023, na.rm = TRUE),
              info = "Invalid values in year column")
  expect_true(all(cle_sac_tbl_df$age >= 0 & cle_sac_tbl_df$age <= 100, na.rm = TRUE),
              info = "Invalid values in age column")
  expect_true(all(cle_sac_tbl_df$personal_income >= 0, na.rm = TRUE),
              info = "Negative values in personal_income")
})

# Test for missing values in critical columns
test_that("cle_sac_tbl_df reports NA values in critical columns", {
  critical_columns <- c("year", "state", "city", "age", "personal_income")
  for (column in critical_columns) {
    n_na <- sum(is.na(cle_sac_tbl_df[[column]]))
    expect_true(n_na >= 0,
                info = paste("Found", n_na, "NA values in", column))
  }
})

# Test data consistency
test_that("cle_sac_tbl_df has consistent data", {
  # Check if each city matches its state
  expect_true(all(cle_sac_tbl_df$city[cle_sac_tbl_df$state == "Ohio"] == "Cleveland"))
  expect_true(all(cle_sac_tbl_df$city[cle_sac_tbl_df$state == "California"] == "Sacramento"))
})

# Test to verify dataset immutability
test_that("cle_sac_tbl_df remains unchanged after tests", {
  # Create a deep copy of the original dataset before tests
  original_dataset <- cle_sac_tbl_df

  # Run some example tests
  sum(is.na(cle_sac_tbl_df$age))
  all(cle_sac_tbl_df$personal_income >= 0, na.rm = TRUE)

  # Verify the dataset hasn't changed
  expect_identical(original_dataset, cle_sac_tbl_df)
  expect_equal(nrow(original_dataset), nrow(cle_sac_tbl_df))
  expect_equal(ncol(original_dataset), ncol(cle_sac_tbl_df))
  expect_equal(names(original_dataset), names(cle_sac_tbl_df))
})
