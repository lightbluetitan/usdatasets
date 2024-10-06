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

# us_time_survey_tbl_df  data set

# Load necessary libraries
library(testthat)

library(usdatasets)

# Create a test file for us_time_survey_tbl_df
test_that("us_time_survey_tbl_df has no missing values in critical columns", {

  # Check for missing values in critical columns
  expect_equal(sum(is.na(us_time_survey_tbl_df$year)), 0, info = "year has missing values")
  expect_equal(sum(is.na(us_time_survey_tbl_df$household_activities)), 0, info = "household_activities has missing values")
  expect_equal(sum(is.na(us_time_survey_tbl_df$eating_and_drinking)), 0, info = "eating_and_drinking has missing values")
  expect_equal(sum(is.na(us_time_survey_tbl_df$leisure_and_sports)), 0, info = "leisure_and_sports has missing values")
  expect_equal(sum(is.na(us_time_survey_tbl_df$sleeping)), 0, info = "sleeping has missing values")
  expect_equal(sum(is.na(us_time_survey_tbl_df$caring_children)), 0, info = "caring_children has missing values")
  expect_equal(sum(is.na(us_time_survey_tbl_df$working_employed)), 0, info = "working_employed has missing values")
  expect_equal(sum(is.na(us_time_survey_tbl_df$working_employed_days_worked)), 0, info = "working_employed_days_worked has missing values")
})

test_that("us_time_survey_tbl_df has appropriate data types", {

  # Check if columns have appropriate data types
  expect_type(us_time_survey_tbl_df$year, "double")
  expect_type(us_time_survey_tbl_df$household_activities, "double")
  expect_type(us_time_survey_tbl_df$eating_and_drinking, "double")
  expect_type(us_time_survey_tbl_df$leisure_and_sports, "double")
  expect_type(us_time_survey_tbl_df$sleeping, "double")
  expect_type(us_time_survey_tbl_df$caring_children, "double")
  expect_type(us_time_survey_tbl_df$working_employed, "double")
  expect_type(us_time_survey_tbl_df$working_employed_days_worked, "double")
})

