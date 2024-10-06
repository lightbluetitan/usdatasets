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

# state_center_list data set

library(testthat)

library(usdatasets)

test_that("state_center_list has correct structure", {
  # Test the class
  expect_type(state_center_list, "list")

  # Test the length of the list
  expect_equal(length(state_center_list), 2)

  # Test the names of the list elements
  expect_equal(names(state_center_list), c("x", "y"))

  # Test that x and y are numeric vectors
  expect_type(state_center_list$x, "double")
  expect_type(state_center_list$y, "double")

  # Test that x and y have the correct length
  expect_equal(length(state_center_list$x), 50)
  expect_equal(length(state_center_list$y), 50)
})

test_that("state_center_list coordinates are valid", {
  # Test that there are no NA values
  expect_false(any(is.na(state_center_list$x)))
  expect_false(any(is.na(state_center_list$y)))

  # Test that all values are finite
  expect_true(all(is.finite(state_center_list$x)))
  expect_true(all(is.finite(state_center_list$y)))

  # Test longitude range (x coordinates) for continental US plus Alaska and Hawaii
  expect_true(all(state_center_list$x >= -130)) # Westernmost point
  expect_true(all(state_center_list$x <= -65))  # Easternmost point

  # Test latitude range (y coordinates) for continental US plus Alaska and Hawaii
  expect_true(all(state_center_list$y >= 25))   # Southernmost point
  expect_true(all(state_center_list$y <= 50))   # Northernmost point

  # Test that coordinates form unique pairs (no two states have exact same center)
  state_centers <- paste(state_center_list$x, state_center_list$y)
  expect_equal(length(unique(state_centers)), 50)
})

test_that("state_center_list has expected coordinate patterns", {
  # Test that we have both positive and negative longitude values (x)
  expect_true(all(state_center_list$x < 0))  # All longitudes in US are negative

  # Test that all latitude values (y) are positive
  expect_true(all(state_center_list$y > 0))

  # Test for presence of extreme coordinates
  # Alaska should have one of the westernmost points
  expect_true(any(state_center_list$x < -120))

  # Maine should have one of the easternmost points
  expect_true(any(state_center_list$x > -70))

  # Florida should have one of the southernmost points
  expect_true(any(state_center_list$y < 30))

  # Alaska or Minnesota should have one of the northernmost points
  expect_true(any(state_center_list$y > 45))
})
