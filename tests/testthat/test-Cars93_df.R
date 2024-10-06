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

# Cars93_df  data set

library(testthat)

library(usdatasets)

test_that("Cars93_df has the correct structure", {
  # Class tests
  expect_s3_class(Cars93_df, "data.frame")
  expect_s3_class(Cars93_df, "tbl_df")
  expect_s3_class(Cars93_df, "tbl")

  # Dimensions test
  expect_equal(nrow(Cars93_df), 54)
  expect_equal(ncol(Cars93_df), 6)

  # Column names test
  expected_names <- c("type", "price", "mpg_city", "drive_train",
                      "passengers", "weight")
  expect_equal(names(Cars93_df), expected_names)
})

test_that("Cars93_df has correct data types", {
  # Factor columns
  expect_s3_class(Cars93_df$type, "factor")
  expect_s3_class(Cars93_df$drive_train, "factor")

  # Numeric columns
  expect_type(Cars93_df$price, "double")

  # Integer columns
  expect_type(Cars93_df$mpg_city, "integer")
  expect_type(Cars93_df$passengers, "integer")
  expect_type(Cars93_df$weight, "integer")
})

test_that("Cars93_df factors have correct levels", {
  # Type levels
  expect_equal(nlevels(Cars93_df$type), 3)

  # Drive train levels
  expect_equal(nlevels(Cars93_df$drive_train), 3)
})

test_that("Cars93_df has no NA values", {
  # Verify there are no NA's in any column
  expect_false(any(is.na(Cars93_df)))
})

test_that("Cars93_df has values in valid ranges", {
  # Verify all numeric values are finite
  expect_true(all(is.finite(Cars93_df$price)))
  expect_true(all(is.finite(Cars93_df$mpg_city)))
  expect_true(all(is.finite(Cars93_df$passengers)))
  expect_true(all(is.finite(Cars93_df$weight)))

  # Verify logical ranges
  expect_true(all(Cars93_df$price > 0))
  expect_true(all(Cars93_df$mpg_city > 0))
  expect_true(all(Cars93_df$passengers > 0))
  expect_true(all(Cars93_df$weight > 0))

  # Verify passenger count is reasonable
  expect_true(all(Cars93_df$passengers <= 9)) # Assuming no vehicles over 9 passengers
})
