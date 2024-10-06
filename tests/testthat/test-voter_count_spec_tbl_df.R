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

# voter_count_spec_tbl_df  data set

library(testthat)

library(usdatasets)

# Define the test file for voter_count_spec_tbl_df
test_that("voter_count_spec_tbl_df structure and content tests", {

  # Check the structure of the dataset
  expect_s3_class(voter_count_spec_tbl_df, "spec_tbl_df")
  expect_s3_class(voter_count_spec_tbl_df, "tbl_df")
  expect_s3_class(voter_count_spec_tbl_df, "tbl")
  expect_s3_class(voter_count_spec_tbl_df, "data.frame")

  # Check the number of rows and columns
  expect_equal(nrow(voter_count_spec_tbl_df), 936)
  expect_equal(ncol(voter_count_spec_tbl_df), 7)

  # Check the column names
  expected_names <- c("year", "region", "voting_eligible_population", "total_ballots_counted",
                      "highest_office", "percent_total_ballots_counted", "percent_highest_office")
  expect_equal(names(voter_count_spec_tbl_df), expected_names)

  # Check for missing values in critical columns
  expect_equal(sum(is.na(voter_count_spec_tbl_df$voting_eligible_population)), 0,
               info = "voting_eligible_population should have no missing values")

  # Check if total_ballots_counted has any missing values
  actual_na_count <- sum(is.na(voter_count_spec_tbl_df$total_ballots_counted))
  expect_true(actual_na_count > 0,
              info = paste("total_ballots_counted has", actual_na_count, "missing values"))

  # Check data types
  expect_type(voter_count_spec_tbl_df$year, "double")  # Removed info argument
  expect_type(voter_count_spec_tbl_df$region, "character")
  expect_type(voter_count_spec_tbl_df$voting_eligible_population, "double")
  expect_type(voter_count_spec_tbl_df$total_ballots_counted, "double")
  expect_type(voter_count_spec_tbl_df$highest_office, "double")
  expect_type(voter_count_spec_tbl_df$percent_total_ballots_counted, "double")
  expect_type(voter_count_spec_tbl_df$percent_highest_office, "double")
})

