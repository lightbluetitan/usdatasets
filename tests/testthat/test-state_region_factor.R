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

# state_region_factor  data set

library(testthat)

library(usdatasets)


test_that("state_region_factor has correct properties", {
  # Test the class (using the updated expect_s3_class instead of expect_is)
  expect_s3_class(state_region_factor, "factor")

  # Test the length
  expect_equal(length(state_region_factor), 50)

  # Test number of levels
  expect_equal(nlevels(state_region_factor), 4)

  # Test specific levels
  expect_equal(
    levels(state_region_factor),
    c("Northeast", "South", "North Central", "West")
  )

  # Test that all values are within the defined levels
  expect_true(all(!is.na(state_region_factor)))

  # Test that we have at least one occurrence of each level
  expect_true(all(table(state_region_factor) > 0))
})
