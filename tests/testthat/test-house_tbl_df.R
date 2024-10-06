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

# house_tbl_df data set

library(testthat)

library(usdatasets)


# Start defining tests for house_tbl_df
test_that("house_tbl_df has the correct structure", {

  # Check that it is a tibble
  expect_s3_class(house_tbl_df, "tbl_df")

  # Check the number of columns
  expect_equal(length(house_tbl_df), 12)

  # Check that column names are correct
  expected_names <- c("congress", "year_start", "year_end", "seats",
                      "p1", "np1", "p2", "np2", "other",
                      "vac", "del", "res")
  expect_equal(names(house_tbl_df), expected_names)

})

test_that("house_tbl_df has correct column types", {

  # Check that congress is numeric
  expect_type(house_tbl_df$congress, "double")

  # Check that year_start is numeric
  expect_type(house_tbl_df$year_start, "double")

  # Check that year_end is numeric
  expect_type(house_tbl_df$year_end, "double")

  # Check that seats is numeric
  expect_type(house_tbl_df$seats, "double")

  # Check that p1 is character
  expect_type(house_tbl_df$p1, "character")

  # Check that np1 is numeric
  expect_type(house_tbl_df$np1, "double")

  # Check that p2 is character
  expect_type(house_tbl_df$p2, "character")

  # Check that np2 is numeric
  expect_type(house_tbl_df$np2, "double")

  # Check that other is numeric
  expect_type(house_tbl_df$other, "double")

  # Check that vac is numeric
  expect_type(house_tbl_df$vac, "double")

  # Check that del is numeric
  expect_type(house_tbl_df$del, "double")

  # Check that res is numeric
  expect_type(house_tbl_df$res, "double")

})

test_that("house_tbl_df has non-null values in key columns", {

  # Check that there are no NA values in key columns
  expect_true(all(!is.na(house_tbl_df$congress)))
  expect_true(all(!is.na(house_tbl_df$year_start)))
  expect_true(all(!is.na(house_tbl_df$year_end)))
  expect_true(all(!is.na(house_tbl_df$seats)))
  expect_true(all(!is.na(house_tbl_df$p1)))
  expect_true(all(!is.na(house_tbl_df$np1)))
  expect_true(all(!is.na(house_tbl_df$p2)))
  expect_true(all(!is.na(house_tbl_df$np2)))
  expect_true(all(!is.na(house_tbl_df$other)))
  expect_true(all(!is.na(house_tbl_df$vac)))
  expect_true(all(!is.na(house_tbl_df$del)))
  expect_true(all(!is.na(house_tbl_df$res)))

})


