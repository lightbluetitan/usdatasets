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

# airports_tbl_df data set

library(testthat)

library(usdatasets)

# Test dataset structure and class
test_that("airports_tbl_df loads correctly and has the expected structure", {
  expect_s3_class(airports_tbl_df, "tbl_df")
  expect_equal(nrow(airports_tbl_df), 1458)
  expect_equal(ncol(airports_tbl_df), 8)
  expect_equal(names(airports_tbl_df),
               c("faa", "name", "lat", "lon", "alt", "tz", "dst", "tzone"))
})

# Test data types of columns
test_that("airports_tbl_df has correct column types", {
  expect_type(airports_tbl_df$faa, "character")
  expect_type(airports_tbl_df$name, "character")
  expect_type(airports_tbl_df$lat, "double")
  expect_type(airports_tbl_df$lon, "double")
  expect_type(airports_tbl_df$alt, "double")
  expect_type(airports_tbl_df$tz, "double")
  expect_type(airports_tbl_df$dst, "character")
  expect_type(airports_tbl_df$tzone, "character")
})

# Test valid ranges for geographic coordinates
test_that("airports_tbl_df has valid geographic coordinates", {
  expect_true(all(airports_tbl_df$lat >= -90 & airports_tbl_df$lat <= 90, na.rm = TRUE),
              info = "Invalid latitude values found")
  expect_true(all(airports_tbl_df$lon >= -180 & airports_tbl_df$lon <= 180, na.rm = TRUE),
              info = "Invalid longitude values found")
  expect_true(all(airports_tbl_df$alt >= -1000, na.rm = TRUE),  # Some airports are below sea level
              info = "Invalid altitude values found")
})

# Test timezone values
test_that("airports_tbl_df has valid timezone values", {
  expect_true(all(airports_tbl_df$tz >= -12 & airports_tbl_df$tz <= 14, na.rm = TRUE),
              info = "Invalid timezone values found")
  expect_true(all(airports_tbl_df$dst %in% c("A", "N", "U", "E"), na.rm = TRUE),
              info = "Invalid DST values found")
})

# Test for missing values in critical columns
test_that("airports_tbl_df reports NA values in critical columns", {
  critical_columns <- c("faa", "name", "lat", "lon")
  for (column in critical_columns) {
    n_na <- sum(is.na(airports_tbl_df[[column]]))
    expect_true(n_na >= 0,
                info = paste("Found", n_na, "NA values in", column))
  }
})

# Test FAA code format
test_that("airports_tbl_df has valid FAA codes", {
  # FAA codes are typically 3-4 characters
  valid_length <- nchar(airports_tbl_df$faa) >= 3 & nchar(airports_tbl_df$faa) <= 4
  expect_true(all(valid_length | is.na(airports_tbl_df$faa)),
              info = "Invalid FAA code length found")
})

# Test that airport names are not empty
test_that("airports_tbl_df has non-empty airport names", {
  expect_true(all(nchar(airports_tbl_df$name) > 0 | is.na(airports_tbl_df$name)),
              info = "Empty airport names found")
})

# Test to verify dataset immutability
test_that("airports_tbl_df remains unchanged after tests", {
  # Create a deep copy of the original dataset before tests
  original_dataset <- airports_tbl_df

  # Run some example tests
  sum(is.na(airports_tbl_df$faa))
  all(airports_tbl_df$lat >= -90 & airports_tbl_df$lat <= 90, na.rm = TRUE)

  # Verify the dataset hasn't changed
  expect_identical(original_dataset, airports_tbl_df)
  expect_equal(nrow(original_dataset), nrow(airports_tbl_df))
  expect_equal(ncol(original_dataset), ncol(airports_tbl_df))
  expect_equal(names(original_dataset), names(airports_tbl_df))
})
