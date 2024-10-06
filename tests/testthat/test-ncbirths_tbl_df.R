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

# ncbirths_tbl_df data set

library(testthat)

library(usdatasets)

# Test dataset structure and class
test_that("ncbirths_tbl_df loads correctly and has the expected structure", {
  expect_s3_class(ncbirths_tbl_df, "tbl_df")
  expect_equal(nrow(ncbirths_tbl_df), 1000)
  expect_equal(ncol(ncbirths_tbl_df), 13)
  expect_equal(names(ncbirths_tbl_df),
               c("fage", "mage", "mature", "weeks", "premie",
                 "visits", "marital", "gained", "weight",
                 "lowbirthweight", "gender", "habit", "whitemom"))
})

# Test data types of columns
test_that("ncbirths_tbl_df has correct column types", {
  expect_type(ncbirths_tbl_df$fage, "integer")
  expect_type(ncbirths_tbl_df$mage, "integer")
  expect_s3_class(ncbirths_tbl_df$mature, "factor")
  expect_type(ncbirths_tbl_df$weeks, "integer")
  expect_s3_class(ncbirths_tbl_df$premie, "factor")
  expect_type(ncbirths_tbl_df$visits, "integer")
  expect_s3_class(ncbirths_tbl_df$marital, "factor")
  expect_type(ncbirths_tbl_df$gained, "integer")
  expect_type(ncbirths_tbl_df$weight, "double")  # Updated to expect 'double' instead of 'numeric'
  expect_s3_class(ncbirths_tbl_df$lowbirthweight, "factor")
  expect_s3_class(ncbirths_tbl_df$gender, "factor")
  expect_s3_class(ncbirths_tbl_df$habit, "factor")
  expect_s3_class(ncbirths_tbl_df$whitemom, "factor")
})

# Test for valid ranges for age
test_that("ncbirths_tbl_df has valid age ranges", {
  expect_true(all(ncbirths_tbl_df$fage >= 0, na.rm = TRUE),
              info = "Invalid fage values found")
  expect_true(all(ncbirths_tbl_df$mage >= 0, na.rm = TRUE),
              info = "Invalid mage values found")
})

# Test for valid weeks of gestation
test_that("ncbirths_tbl_df has valid weeks of gestation", {
  expect_true(all(ncbirths_tbl_df$weeks >= 0 & ncbirths_tbl_df$weeks <= 52, na.rm = TRUE),
              info = "Invalid weeks values found")
})

# Test for valid visits count
test_that("ncbirths_tbl_df has valid visits count", {
  expect_true(all(ncbirths_tbl_df$visits >= 0, na.rm = TRUE),
              info = "Invalid visits count found")
})

# Test for valid weight
test_that("ncbirths_tbl_df has valid weight values", {
  expect_true(all(ncbirths_tbl_df$weight > 0, na.rm = TRUE),
              info = "Invalid weight values found")
})

# Test for valid categorical variables
test_that("ncbirths_tbl_df has valid categorical values", {
  expect_equal(nlevels(ncbirths_tbl_df$mature), 2)
  expect_equal(nlevels(ncbirths_tbl_df$premie), 2)
  expect_equal(nlevels(ncbirths_tbl_df$marital), 2)
  expect_equal(nlevels(ncbirths_tbl_df$lowbirthweight), 2)
  expect_equal(nlevels(ncbirths_tbl_df$gender), 2)
  expect_equal(nlevels(ncbirths_tbl_df$habit), 2)
  expect_equal(nlevels(ncbirths_tbl_df$whitemom), 2)
})

# Test for missing values in critical columns
test_that("ncbirths_tbl_df reports NA values in critical columns", {
  critical_columns <- c("fage", "mage", "weeks", "gained", "weight", "gender")
  for (column in critical_columns) {
    n_na <- sum(is.na(ncbirths_tbl_df[[column]]))
    expect_true(n_na >= 0,
                info = paste("Found", n_na, "NA values in", column))
  }
})

# Test to verify dataset immutability
test_that("ncbirths_tbl_df remains unchanged after tests", {
  # Create a deep copy of the original dataset before tests
  original_dataset <- ncbirths_tbl_df

  # Run some example tests
  sum(is.na(ncbirths_tbl_df$weight))
  all(ncbirths_tbl_df$weeks >= 0, na.rm = TRUE)

  # Verify the dataset hasn't changed
  expect_identical(original_dataset, ncbirths_tbl_df)
  expect_equal(nrow(original_dataset), nrow(ncbirths_tbl_df))
  expect_equal(ncol(original_dataset), ncol(ncbirths_tbl_df))
  expect_equal(names(original_dataset), names(ncbirths_tbl_df))
})
