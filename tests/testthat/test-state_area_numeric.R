# usdatasets package, collection of exclusive datasets from the United States for use in R.
# Copyright (C) 2024  Renzo Cáceres Rossi
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

# state_area_numeric  data set

library(testthat)

library(usdatasets)

test_that("state_area_numeric has correct properties", {
  # Test the class
  expect_type(state_area_numeric, "double")

  # Test the length
  expect_equal(length(state_area_numeric), 50)

  # Test that there are no NA values
  expect_false(any(is.na(state_area_numeric)))

  # Test that all values are positive
  expect_true(all(state_area_numeric > 0))

  # Test that all values are finite
  expect_true(all(is.finite(state_area_numeric)))

  # Test for reasonable range
  # Rhode Island (smallest) ~ 1,000 sq miles
  # Alaska (largest) ~ 600,000 sq miles
  expect_true(all(state_area_numeric >= 1000))
  expect_true(all(state_area_numeric <= 600000))

  # Test that values are whole numbers (no decimals)
  expect_true(all(state_area_numeric == round(state_area_numeric)))

  # Test that we have expected diversity in sizes
  # At least one small state (<10000), one medium state (>40000), and one large state (>100000)
  expect_true(any(state_area_numeric < 10000))  # small states exist
  expect_true(any(state_area_numeric > 40000))  # medium states exist
  expect_true(any(state_area_numeric > 100000)) # large states exist

  # Test for unique values (no duplicates)
  expect_equal(length(unique(state_area_numeric)), 50)

  # Test specific known values
  alaska_area <- max(state_area_numeric)
  expect_equal(alaska_area, 589757)  # Alaska should be the largest

  rhode_island_area <- min(state_area_numeric)
  expect_equal(rhode_island_area, 1214)  # Rhode Island should be the smallest
})
