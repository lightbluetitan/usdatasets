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

# road_df  data set


library(testthat)

library(usdatasets)


test_that("road_df structure and content tests", {

  # Check that road_df has 6 columns
  expect_equal(length(road_df), 6)

  # Check column names
  expected_colnames <- c("deaths", "drivers", "popden", "rural", "temp", "fuel")
  expect_equal(names(road_df), expected_colnames)

  # Check data types of each column
  expect_type(road_df$deaths, "integer")
  expect_type(road_df$drivers, "integer")
  expect_type(road_df$popden, "double") # 'num' in str() corresponds to 'double' in testthat
  expect_type(road_df$rural, "double")
  expect_type(road_df$temp, "integer")
  expect_type(road_df$fuel, "double")

  # Check that there are no NA values in the columns
  expect_equal(sum(is.na(road_df$deaths)), 0)
  expect_equal(sum(is.na(road_df$drivers)), 0)
  expect_equal(sum(is.na(road_df$popden)), 0)
  expect_equal(sum(is.na(road_df$rural)), 0)
  expect_equal(sum(is.na(road_df$temp)), 0)
  expect_equal(sum(is.na(road_df$fuel)), 0)

  # Check that the columns have logical values (deaths, drivers >= 0)
  expect_true(all(road_df$deaths >= 0))
  expect_true(all(road_df$drivers >= 0))

  # Check that numerical columns do not have negative values where inappropriate
  expect_true(all(road_df$popden >= 0))
  expect_true(all(road_df$rural >= 0))
  expect_true(all(road_df$temp >= -50)) # Assuming 'temp' is temperature and should be reasonable
  expect_true(all(road_df$fuel >= 0))

})

