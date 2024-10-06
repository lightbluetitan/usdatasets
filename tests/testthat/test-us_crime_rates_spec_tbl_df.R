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

# us_crime_rates_spec_tbl_df  data set

library(testthat)

library(usdatasets)

# Test dataset structure and class
test_that("us_crime_rates_spec_tbl_df loads correctly and has the expected structure", {
  expect_s3_class(us_crime_rates_spec_tbl_df, "spec_tbl_df")
  expect_equal(nrow(us_crime_rates_spec_tbl_df), 60)
  expect_equal(ncol(us_crime_rates_spec_tbl_df), 12)
  expect_equal(names(us_crime_rates_spec_tbl_df), c("year", "population", "total", "violent",
                                                    "property", "murder", "forcible_rape",
                                                    "robbery", "aggravated_assault", "burglary",
                                                    "larceny_theft", "vehicle_theft"))
})

# Test data types of columns
test_that("us_crime_rates_spec_tbl_df has correct column types", {
  expect_type(us_crime_rates_spec_tbl_df$year, "double")
  expect_type(us_crime_rates_spec_tbl_df$population, "double")
  expect_type(us_crime_rates_spec_tbl_df$total, "double")
  expect_type(us_crime_rates_spec_tbl_df$violent, "double")
  expect_type(us_crime_rates_spec_tbl_df$property, "double")
  expect_type(us_crime_rates_spec_tbl_df$murder, "double")
  expect_type(us_crime_rates_spec_tbl_df$forcible_rape, "double")
  expect_type(us_crime_rates_spec_tbl_df$robbery, "double")
  expect_type(us_crime_rates_spec_tbl_df$aggravated_assault, "double")
  expect_type(us_crime_rates_spec_tbl_df$burglary, "double")
  expect_type(us_crime_rates_spec_tbl_df$larceny_theft, "double")
  expect_type(us_crime_rates_spec_tbl_df$vehicle_theft, "double")
})

# Test for valid years
test_that("us_crime_rates_spec_tbl_df has valid years", {
  expect_true(all(us_crime_rates_spec_tbl_df$year >= 1960 & us_crime_rates_spec_tbl_df$year <= 2019, na.rm = TRUE),
              info = "Invalid year value found")
})

# Test for missing values in critical columns
test_that("us_crime_rates_spec_tbl_df reports NA values in critical columns", {
  critical_columns <- c("year", "population", "total", "violent", "property", "murder",
                        "forcible_rape", "robbery", "aggravated_assault", "burglary",
                        "larceny_theft", "vehicle_theft")
  for (column in critical_columns) {
    n_na <- sum(is.na(us_crime_rates_spec_tbl_df[[column]]))
    expect_true(n_na == 0, info = paste("Column", column, "contains", n_na, "NA values"))
  }
})

# Test to verify dataset immutability
test_that("us_crime_rates_spec_tbl_df remains unchanged after tests", {
  # Create a deep copy of the original dataset before tests
  original_dataset <- us_crime_rates_spec_tbl_df

  # Run some example tests
  sum(is.na(us_crime_rates_spec_tbl_df$violent))
  all(us_crime_rates_spec_tbl_df$year >= 1960 & us_crime_rates_spec_tbl_df$year <= 2019, na.rm = TRUE)

  # Verify the dataset hasn't changed
  expect_identical(original_dataset, us_crime_rates_spec_tbl_df)
  expect_equal(nrow(original_dataset), nrow(us_crime_rates_spec_tbl_df))
  expect_equal(ncol(original_dataset), ncol(us_crime_rates_spec_tbl_df))
  expect_equal(names(original_dataset), names(us_crime_rates_spec_tbl_df))
})
