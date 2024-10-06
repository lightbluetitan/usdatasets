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

# nyc_marathon_tbl_df data set

library(testthat)

library(usdatasets)


# Test: Check that the dataset has the correct columns
test_that("nyc_marathon_tbl_df has the correct columns", {
  expect_equal(names(nyc_marathon_tbl_df), c("year", "name", "country", "time", "time_hrs", "division", "note"))
})

# Test: Check the class of the dataset
test_that("nyc_marathon_tbl_df has the correct class", {
  expect_s3_class(nyc_marathon_tbl_df, "tbl_df")
  expect_s3_class(nyc_marathon_tbl_df, "tbl")
  expect_s3_class(nyc_marathon_tbl_df, "data.frame")
})

# Test: Check the length of the dataset
test_that("nyc_marathon_tbl_df has the correct number of columns", {
  expect_equal(length(nyc_marathon_tbl_df), 7)
})

# Test: Check the structure of the dataset
test_that("nyc_marathon_tbl_df has correct structure", {
  expect_type(nyc_marathon_tbl_df$year, "double")
  expect_type(nyc_marathon_tbl_df$name, "character")
  expect_type(nyc_marathon_tbl_df$country, "character")
  expect_s3_class(nyc_marathon_tbl_df$time, "hms")
  expect_type(nyc_marathon_tbl_df$time_hrs, "double")
  expect_type(nyc_marathon_tbl_df$division, "character")
  expect_type(nyc_marathon_tbl_df$note, "character")
})

# Test: Check for non-null values in key columns, allowing for NA values
test_that("nyc_marathon_tbl_df has non-null values in key columns", {
  expect_true(any(!is.na(nyc_marathon_tbl_df$name)), info = "At least one name should be present")
  expect_true(any(!is.na(nyc_marathon_tbl_df$country)), info = "At least one country should be present")
  expect_true(any(!is.na(nyc_marathon_tbl_df$time)), info = "At least one time should be present")
})

# Test: Check the number of rows and columns
test_that("nyc_marathon_tbl_df has a reasonable number of rows", {
  expect_equal(nrow(nyc_marathon_tbl_df), 102)
})

# Test: Check that the years in nyc_marathon_tbl_df are within a reasonable range
test_that("The years in nyc_marathon_tbl_df are within a reasonable range", {
  expect_true(all(nyc_marathon_tbl_df$year >= 1970 & nyc_marathon_tbl_df$year <= 2023))
})


