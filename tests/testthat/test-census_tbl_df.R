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

# census_tbl_df data set

library(testthat)

library(usdatasets)

test_that("census_tbl_df loads correctly and has the expected structure", {
  # Load the dataset
  data("census_tbl_df", package = "usdatasets")

  # Check the structure
  expect_s3_class(census_tbl_df, "tbl_df") # Verify it is a tibble
  expect_equal(nrow(census_tbl_df), 500)    # Verify the number of observations
  expect_equal(ncol(census_tbl_df), 8)      # Verify the number of variables

  # Check that the columns have the expected names
  expected_names <- c("census_year", "state_fips_code", "total_family_income",
                      "age", "sex", "race_general", "marital_status", "total_personal_income")
  expect_equal(names(census_tbl_df), expected_names)

  # Check for missing values in total_family_income
  total_income_na <- sum(is.na(census_tbl_df$total_family_income))
  expect_message(if (total_income_na > 0) {
    message("There are ", total_income_na, " NA values in the 'total_family_income' column.")
  }, info = "Checking total_family_income NA values.")

  # Check for non-negative total family income
  expect_true(all(census_tbl_df$total_family_income >= 0, na.rm = TRUE),
              info = "Total family income should be non-negative.")

  # Verify the types of each column
  expect_type(census_tbl_df$census_year, "integer")
  expect_s3_class(census_tbl_df$state_fips_code, "factor")
  expect_type(census_tbl_df$total_family_income, "integer")
  expect_type(census_tbl_df$age, "integer")
  expect_s3_class(census_tbl_df$sex, "factor")
  expect_s3_class(census_tbl_df$race_general, "factor")
  expect_s3_class(census_tbl_df$marital_status, "factor")
  expect_type(census_tbl_df$total_personal_income, "integer")

  # Clean the dataset by replacing invalid ages
  census_tbl_df$age[census_tbl_df$age <= 0 | census_tbl_df$age > 120] <- NA

  # Check for valid ages
  valid_ages <- na.omit(census_tbl_df$age)
  if (any(valid_ages <= 0 | valid_ages > 120)) {
    message("There are invalid age values: ",
            paste(valid_ages[valid_ages <= 0 | valid_ages > 120], collapse = ", "))
  }

  # Validate ages if valid_ages is not empty
  if (length(valid_ages) > 0) {
    expect_true(all(valid_ages > 0 & valid_ages <= 120),
                info = "All ages should be valid.")
  } else {
    message("No valid ages found.")
  }
})
