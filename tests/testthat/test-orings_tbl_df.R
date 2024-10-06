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

# orings_tbl_df data set

# Load necessary library

library(testthat)

library(usdatasets)

# Test that the dataset has the correct structure
test_that("orings_tbl_df has the correct structure", {
  # Check the class of the dataset
  expect_s3_class(orings_tbl_df, "tbl_df")

  # Check the number of columns
  expect_equal(length(orings_tbl_df), 4)

  # Check the column names
  expected_names <- c("mission", "temperature", "damaged", "undamaged")
  expect_equal(names(orings_tbl_df), expected_names)

  # Check the data types
  expect_type(orings_tbl_df$mission, "integer")
  expect_type(orings_tbl_df$temperature, "integer")
  expect_type(orings_tbl_df$damaged, "integer")
  expect_type(orings_tbl_df$undamaged, "double")

  # Check for missing values in key columns
  expect_true(all(!is.na(orings_tbl_df$mission)))
  expect_true(all(!is.na(orings_tbl_df$temperature)))
  expect_true(all(!is.na(orings_tbl_df$damaged)))
  expect_true(all(!is.na(orings_tbl_df$undamaged)))
})

