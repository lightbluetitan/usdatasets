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

# state_division_factor  data set

library(testthat)

library(usdatasets)

test_that("state_division_factor has correct properties", {
  # Test the class
  expect_s3_class(state_division_factor, "factor")

  # Test the length
  expect_equal(length(state_division_factor), 50)

  # Test number of levels
  expect_equal(nlevels(state_division_factor), 9)

  # Test for presence of all expected divisions
  expected_divisions <- c(
    "New England",
    "Middle Atlantic",
    "East North Central",
    "West North Central",
    "South Atlantic",
    "East South Central",
    "West South Central",
    "Mountain",
    "Pacific"
  )

  # Test specific levels
  expect_equal(sort(levels(state_division_factor)), sort(expected_divisions))

  # Test that all values are within the defined levels
  expect_true(all(!is.na(state_division_factor)))

  # Test that we have at least one occurrence of each level
  expect_true(all(table(state_division_factor) > 0))

  # Test that the data type is nominal (unordered factor)
  expect_false(is.ordered(state_division_factor))
})
