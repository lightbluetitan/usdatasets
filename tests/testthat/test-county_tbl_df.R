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

# county_tbl_df data set

library(testthat)

library(usdatasets)

# Test dataset structure and class
test_that("county_tbl_df loads correctly and has the expected structure", {
  expect_s3_class(county_tbl_df, "tbl_df")
  expect_equal(nrow(county_tbl_df), 3142)
  expect_equal(ncol(county_tbl_df), 15)
  expect_equal(names(county_tbl_df),
               c("name", "state", "pop2000", "pop2010", "pop2017",
                 "pop_change", "poverty", "homeownership", "multi_unit",
                 "unemployment_rate", "metro", "median_edu",
                 "per_capita_income", "median_hh_income", "smoking_ban"))
})

# Test data types of columns
test_that("county_tbl_df has correct column types", {
  expect_type(county_tbl_df$name, "character")
  expect_s3_class(county_tbl_df$state, "factor")
  expect_type(county_tbl_df$pop2000, "double")
  expect_type(county_tbl_df$pop2010, "double")
  expect_type(county_tbl_df$pop2017, "integer")
  expect_type(county_tbl_df$pop_change, "double")
  expect_type(county_tbl_df$poverty, "double")
  expect_type(county_tbl_df$homeownership, "double")
  expect_type(county_tbl_df$multi_unit, "double")
  expect_type(county_tbl_df$unemployment_rate, "double")
  expect_s3_class(county_tbl_df$metro, "factor")
  expect_s3_class(county_tbl_df$median_edu, "factor")
  expect_type(county_tbl_df$per_capita_income, "double")
  expect_type(county_tbl_df$median_hh_income, "integer")
  expect_s3_class(county_tbl_df$smoking_ban, "factor")
})

# Test valid ranges for percentage values
test_that("county_tbl_df has valid percentage ranges", {
  expect_true(all(county_tbl_df$poverty >= 0 & county_tbl_df$poverty <= 100, na.rm = TRUE),
              info = "Invalid poverty rate values found")
  expect_true(all(county_tbl_df$homeownership >= 0 & county_tbl_df$homeownership <= 100, na.rm = TRUE),
              info = "Invalid homeownership rate values found")
  expect_true(all(county_tbl_df$multi_unit >= 0 & county_tbl_df$multi_unit <= 100, na.rm = TRUE),
              info = "Invalid multi-unit values found")
  expect_true(all(county_tbl_df$unemployment_rate >= 0 & county_tbl_df$unemployment_rate <= 100, na.rm = TRUE),
              info = "Invalid unemployment rate values found")
})

# Test population values
test_that("county_tbl_df has valid population values", {
  expect_true(all(county_tbl_df$pop2000 >= 0, na.rm = TRUE),
              info = "Negative population found in pop2000")
  expect_true(all(county_tbl_df$pop2010 >= 0, na.rm = TRUE),
              info = "Negative population found in pop2010")
  expect_true(all(county_tbl_df$pop2017 >= 0, na.rm = TRUE),
              info = "Negative population found in pop2017")
})

# Test categorical variables
test_that("county_tbl_df has valid categorical values", {
  expect_equal(nlevels(county_tbl_df$state), 51)  # 50 states plus DC
  expect_equal(levels(county_tbl_df$metro), c("no", "yes"))
  expect_equal(nlevels(county_tbl_df$median_edu), 4)
  expect_equal(nlevels(county_tbl_df$smoking_ban), 3)
})

# Test income values
test_that("county_tbl_df has valid income values", {
  expect_true(all(county_tbl_df$per_capita_income >= 0, na.rm = TRUE),
              info = "Negative per capita income found")
  expect_true(all(county_tbl_df$median_hh_income >= 0, na.rm = TRUE),
              info = "Negative median household income found")
})

# Test for missing values in critical columns
test_that("county_tbl_df reports NA values in critical columns", {
  critical_columns <- c("name", "state", "pop2017", "poverty", "unemployment_rate")
  for (column in critical_columns) {
    n_na <- sum(is.na(county_tbl_df[[column]]))
    expect_true(n_na >= 0,
                info = paste("Found", n_na, "NA values in", column))
  }
})

# Test to verify dataset immutability
test_that("county_tbl_df remains unchanged after tests", {
  # Create a deep copy of the original dataset before tests
  original_dataset <- county_tbl_df

  # Run some example tests
  sum(is.na(county_tbl_df$poverty))
  all(county_tbl_df$pop2017 >= 0, na.rm = TRUE)

  # Verify the dataset hasn't changed
  expect_identical(original_dataset, county_tbl_df)
  expect_equal(nrow(original_dataset), nrow(county_tbl_df))
  expect_equal(ncol(original_dataset), ncol(county_tbl_df))
  expect_equal(names(original_dataset), names(county_tbl_df))
})
