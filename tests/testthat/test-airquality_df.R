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

# airquality_df  data set


library(testthat)

library(usdatasets)

# Test for airquality_df
test_that("airquality_df has expected structure and content", {
  # Check for expected number of rows and columns
  expect_equal(nrow(airquality_df), 153, info = "Expected 153 rows")
  expect_equal(ncol(airquality_df), 6, info = "Expected 6 columns")

  # Check for missing values, but do not expect zero
  expect_true(sum(is.na(airquality_df$Ozone)) <= 37, info = "Ozone has some missing values but should be ≤ 37")
  expect_true(sum(is.na(airquality_df$Solar.R)) <= 7, info = "Solar.R has some missing values but should be ≤ 7")
  expect_equal(sum(is.na(airquality_df$Wind)), 0, info = "Wind should have no missing values")
  expect_equal(sum(is.na(airquality_df$Temp)), 0, info = "Temp should have no missing values")
  expect_equal(sum(is.na(airquality_df$Month)), 0, info = "Month should have no missing values")
  expect_equal(sum(is.na(airquality_df$Day)), 0, info = "Day should have no missing values")

  # Check the data types of each column
  expect_type(airquality_df$Ozone, "integer")
  expect_type(airquality_df$Solar.R, "integer")
  expect_type(airquality_df$Wind, "double")
  expect_type(airquality_df$Temp, "integer")
  expect_type(airquality_df$Month, "integer")
  expect_type(airquality_df$Day, "integer")
})
