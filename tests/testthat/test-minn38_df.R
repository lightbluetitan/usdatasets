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

# minn38_df  data set

library(testthat)

library(usdatasets)

test_that("minn38_df has the correct structure", {
  # Class test
  expect_s3_class(minn38_df, "data.frame")

  # Dimensions test
  expect_equal(nrow(minn38_df), 168)
  expect_equal(ncol(minn38_df), 5)

  # Column names test
  expected_names <- c("hs", "phs", "fol", "sex", "f")
  expect_equal(names(minn38_df), expected_names)
})

test_that("minn38_df has correct data types", {
  # Factor columns
  expect_s3_class(minn38_df$hs, "factor")
  expect_s3_class(minn38_df$phs, "factor")
  expect_s3_class(minn38_df$fol, "factor")
  expect_s3_class(minn38_df$sex, "factor")

  # Integer column
  expect_type(minn38_df$f, "integer")
})

test_that("minn38_df factors have correct number of levels", {
  # Verify number of levels for each factor
  expect_equal(nlevels(minn38_df$hs), 3)
  expect_equal(nlevels(minn38_df$phs), 4)
  expect_equal(nlevels(minn38_df$fol), 7)
  expect_equal(nlevels(minn38_df$sex), 2)
})

test_that("minn38_df has no NA values", {
  # Verify there are no NA's in any column
  expect_false(any(is.na(minn38_df)))
})

test_that("minn38_df integer column has valid values", {
  # Verify f column has finite values
  expect_true(all(is.finite(minn38_df$f)))

  # Verify f column has non-negative values (assuming frequency count)
  expect_true(all(minn38_df$f >= 0))
})

test_that("minn38_df has valid factor levels relationships", {
  # Verify each factor has at least one observation
  expect_true(all(table(minn38_df$hs) > 0))
  expect_true(all(table(minn38_df$phs) > 0))
  expect_true(all(table(minn38_df$fol) > 0))
  expect_true(all(table(minn38_df$sex) > 0))
})

test_that("minn38_df frequency column is consistent", {
  # Verify that the total frequency is correct
  expect_equal(sum(minn38_df$f), 14068)

  # Verify that all frequencies are whole numbers
  expect_true(all(minn38_df$f == floor(minn38_df$f)))
})
