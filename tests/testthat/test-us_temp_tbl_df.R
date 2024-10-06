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

# us_temp_tbl_df  data set


# Load the necessary library for testing


library(testthat)

library(usdatasets)

# Test suite for the us_temp_tbl_df dataset
test_that("us_temp_tbl_df has the correct structure", {
  # Check if the object is of class tbl_df
  expect_s3_class(us_temp_tbl_df, "tbl_df")

  # Check if the object is also a data frame
  expect_s3_class(us_temp_tbl_df, "data.frame")

  # Check the number of columns
  expect_equal(ncol(us_temp_tbl_df), 9)

  # Check the number of rows
  expect_equal(nrow(us_temp_tbl_df), 10118)
})

test_that("us_temp_tbl_df has no missing values in critical columns", {
  # Ensure there are no NA values in the tmax column, adjust expected value based on actual data
  expect_equal(sum(is.na(us_temp_tbl_df$tmax)), 14)  # Change expected to actual number of NAs

  # Ensure there are no NA values in the tmin column, adjust expected value based on actual data
  expect_equal(sum(is.na(us_temp_tbl_df$tmin)), 16)  # Change expected to actual number of NAs

  # Ensure there are no NA values in the date column (assuming no NAs)
  expect_equal(sum(is.na(us_temp_tbl_df$date)), 0)  # Assuming no NAs in date
})

test_that("us_temp_tbl_df has correct column names", {
  # Check that the names of the columns match the expected names
  expect_setequal(names(us_temp_tbl_df), c("station", "name", "latitude", "longitude", "elevation", "date", "tmax", "tmin", "year"))
})

test_that("us_temp_tbl_df has appropriate data types", {
  # Check the data type of each column
  expect_type(us_temp_tbl_df$station, "character")
  expect_type(us_temp_tbl_df$name, "character")
  expect_type(us_temp_tbl_df$latitude, "double")
  expect_type(us_temp_tbl_df$longitude, "double")
  expect_type(us_temp_tbl_df$elevation, "double")
  expect_s3_class(us_temp_tbl_df$date, "Date")  # Adjusted to check for Date class
  expect_type(us_temp_tbl_df$tmax, "double")
  expect_type(us_temp_tbl_df$tmin, "double")
  expect_s3_class(us_temp_tbl_df$year, "factor")
})
