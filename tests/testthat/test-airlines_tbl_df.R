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

# airlines_tbl_df data set

library(testthat)

library(usdatasets)

test_that("airlines_tbl_df loads correctly and has the expected structure", {

  # Load dataset
  data("airlines_tbl_df", package = "usdatasets")

  # Test that the dataset is a tibble
  expect_s3_class(airlines_tbl_df, "tbl_df")

  # Test the dimensions
  expect_equal(ncol(airlines_tbl_df), 2)
  expect_equal(nrow(airlines_tbl_df), 16)

  # Test the column names
  expect_equal(names(airlines_tbl_df), c("carrier", "name"))

  # Test the column types
  expect_type(airlines_tbl_df$carrier, "character")
  expect_type(airlines_tbl_df$name, "character")

  # Test for missing values (NA)
  expect_false(anyNA(airlines_tbl_df$carrier))
  expect_false(anyNA(airlines_tbl_df$name))

  # Additional checks (e.g., unique values)
  expect_true(all(nchar(airlines_tbl_df$carrier) > 0))
  expect_true(all(nchar(airlines_tbl_df$name) > 0))
})
