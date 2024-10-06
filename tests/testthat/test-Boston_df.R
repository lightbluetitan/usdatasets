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

# Boston_df  data set

library(testthat)

library(usdatasets)

test_that("Boston_df has the correct structure", {
  # Class test - using recommended expect_s3_class instead of expect_is
  expect_s3_class(Boston_df, "data.frame")

  # Dimensions test
  expect_equal(nrow(Boston_df), 506)
  expect_equal(ncol(Boston_df), 14)

  # Column names test
  expected_names <- c("crim", "zn", "indus", "chas", "nox", "rm", "age",
                      "dis", "rad", "tax", "ptratio", "black", "lstat", "medv")
  expect_equal(names(Boston_df), expected_names)
})

test_that("Boston_df has correct data types", {
  # Verify column types
  expect_type(Boston_df$crim, "double")
  expect_type(Boston_df$zn, "double")
  expect_type(Boston_df$indus, "double")
  expect_type(Boston_df$chas, "integer")
  expect_type(Boston_df$nox, "double")
  expect_type(Boston_df$rm, "double")
  expect_type(Boston_df$age, "double")
  expect_type(Boston_df$dis, "double")
  expect_type(Boston_df$rad, "integer")
  expect_type(Boston_df$tax, "double")
  expect_type(Boston_df$ptratio, "double")
  expect_type(Boston_df$black, "double")
  expect_type(Boston_df$lstat, "double")
  expect_type(Boston_df$medv, "double")
})

test_that("Boston_df has no NA values", {
  # Verify there are no NA's in any column
  expect_false(any(is.na(Boston_df)))
})

test_that("Boston_df has values in valid ranges", {
  # Verify all values are finite
  expect_true(all(is.finite(as.matrix(Boston_df))))

  # Verify chas only has values 0 and 1
  expect_true(all(Boston_df$chas %in% c(0,1)))

  # Verify variables cannot be negative
  expect_true(all(Boston_df$crim >= 0))
  expect_true(all(Boston_df$zn >= 0))
  expect_true(all(Boston_df$indus >= 0))
  expect_true(all(Boston_df$rm >= 0))
  expect_true(all(Boston_df$age >= 0))
  expect_true(all(Boston_df$dis >= 0))
  expect_true(all(Boston_df$tax >= 0))
  expect_true(all(Boston_df$ptratio >= 0))
  expect_true(all(Boston_df$black >= 0))
  expect_true(all(Boston_df$lstat >= 0))
  expect_true(all(Boston_df$medv >= 0))
})
