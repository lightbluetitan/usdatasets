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

# women_df  data set


library(testthat)

library(usdatasets)


test_that("women_df structure and content tests", {

  # Check that women_df has 2 columns
  expect_equal(length(women_df), 2)

  # Check column names
  expected_colnames <- c("height", "weight")
  expect_equal(names(women_df), expected_colnames)

  # Check data types of each column (both columns should be numeric)
  expect_type(women_df$height, "double")  # 'num' in str() corresponds to 'double' in testthat
  expect_type(women_df$weight, "double")

  # Check that there are no NA values in any columns
  expect_equal(sum(is.na(women_df$height)), 0)
  expect_equal(sum(is.na(women_df$weight)), 0)

  # Check that all values in both columns are positive
  expect_true(all(women_df$height > 0))
  expect_true(all(women_df$weight > 0))

  # Check the number of observations is exactly 15
  expect_equal(nrow(women_df), 15)

})
