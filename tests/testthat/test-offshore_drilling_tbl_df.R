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

# offshore_drilling_tbl_df data set

# Load the necessary library

library(testthat)

library(usdatasets)

# Test file for offshore_drilling_tbl_df
test_that("offshore_drilling_tbl_df has correct structure", {

  # Check the number of columns
  expect_equal(length(offshore_drilling_tbl_df), 2)

  # Check the names of the columns
  expect_equal(names(offshore_drilling_tbl_df), c("v1", "v2"))

  # Check the class of the dataset
  expect_s3_class(offshore_drilling_tbl_df, "tbl_df")

  # Check the data types of each column
  expect_s3_class(offshore_drilling_tbl_df$v1, "factor")
  expect_s3_class(offshore_drilling_tbl_df$v2, "factor")

  # Check for non-null values in key columns
  expect_true(all(!is.na(offshore_drilling_tbl_df$v1)))
  expect_true(all(!is.na(offshore_drilling_tbl_df$v2)))
})


