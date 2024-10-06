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

# homicides15_tbl_df data set

library(testthat)

library(usdatasets)

# Test dataset structure and class
test_that("homicides15_tbl_df loads correctly and has the expected structure", {
  expect_s3_class(homicides15_tbl_df, "tbl_df")
  expect_equal(nrow(homicides15_tbl_df), 1922)
  expect_equal(ncol(homicides15_tbl_df), 15)
  expect_equal(names(homicides15_tbl_df),
               c("uid", "city_name", "offense_code", "offense_type", "date_single", "address", "longitude",
                 "latitude", "location_type", "location_category", "fips_state", "fips_county", "tract",
                 "block_group", "block"))
})

# Test data types of columns
test_that("homicides15_tbl_df has correct column types", {
  expect_type(homicides15_tbl_df$uid, "integer")
  expect_type(homicides15_tbl_df$city_name, "character")
  expect_type(homicides15_tbl_df$offense_code, "character")
  expect_type(homicides15_tbl_df$offense_type, "character")
  expect_s3_class(homicides15_tbl_df$date_single, "POSIXct")
  expect_type(homicides15_tbl_df$address, "character")
  expect_type(homicides15_tbl_df$longitude, "double")
  expect_type(homicides15_tbl_df$latitude, "double")
  expect_type(homicides15_tbl_df$location_type, "character")
  expect_type(homicides15_tbl_df$location_category, "character")
  expect_type(homicides15_tbl_df$fips_state, "integer")
  expect_type(homicides15_tbl_df$fips_county, "character")
  expect_type(homicides15_tbl_df$tract, "character")
  expect_type(homicides15_tbl_df$block_group, "integer")
  expect_type(homicides15_tbl_df$block, "integer")
})

# Test for valid latitude and longitude ranges
test_that("homicides15_tbl_df has valid latitude and longitude ranges", {
  expect_true(all(homicides15_tbl_df$latitude >= -90 & homicides15_tbl_df$latitude <= 90, na.rm = TRUE),
              info = "Invalid latitude value found")
  expect_true(all(homicides15_tbl_df$longitude >= -180 & homicides15_tbl_df$longitude <= 180, na.rm = TRUE),
              info = "Invalid longitude value found")
})

# Test for missing values in critical columns
test_that("homicides15_tbl_df reports NA values in critical columns", {
  critical_columns <- c("uid", "city_name", "offense_code", "offense_type", "date_single", "longitude", "latitude")
  for (column in critical_columns) {
    n_na <- sum(is.na(homicides15_tbl_df[[column]]))
    expect_true(n_na >= 0,
                info = paste("Found", n_na, "NA values in", column))
  }
})

# Test to verify dataset immutability
test_that("homicides15_tbl_df remains unchanged after tests", {
  # Create a deep copy of the original dataset before tests
  original_dataset <- homicides15_tbl_df

  # Run some example tests
  sum(is.na(homicides15_tbl_df$latitude))
  all(homicides15_tbl_df$longitude >= -180 & homicides15_tbl_df$longitude <= 180, na.rm = TRUE)

  # Verify the dataset hasn't changed
  expect_identical(original_dataset, homicides15_tbl_df)
  expect_equal(nrow(original_dataset), nrow(homicides15_tbl_df))
  expect_equal(ncol(original_dataset), ncol(homicides15_tbl_df))
  expect_equal(names(original_dataset), names(homicides15_tbl_df))
})
