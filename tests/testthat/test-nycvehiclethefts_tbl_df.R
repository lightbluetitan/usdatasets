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

# nycvehiclethefts_tbl_df data set

# Load the necessary library

library(testthat)

library(usdatasets)

# Test file for nycvehiclethefts_tbl_df
test_that("nycvehiclethefts_tbl_df has correct structure", {

  # Check the number of columns
  expect_equal(length(nycvehiclethefts_tbl_df), 9)

  # Check the names of the columns
  expect_equal(names(nycvehiclethefts_tbl_df),
               c("uid", "date_single", "date_start", "date_end",
                 "longitude", "latitude", "location_type",
                 "location_category", "census_block"))

  # Check the class of the dataset
  expect_s3_class(nycvehiclethefts_tbl_df, "tbl_df")

  # Check the data types of each column
  expect_type(nycvehiclethefts_tbl_df$uid, "integer")
  expect_type(nycvehiclethefts_tbl_df$date_single, "character")
  expect_type(nycvehiclethefts_tbl_df$date_start, "character")
  expect_type(nycvehiclethefts_tbl_df$date_end, "character")
  expect_type(nycvehiclethefts_tbl_df$longitude, "double")
  expect_type(nycvehiclethefts_tbl_df$latitude, "double")
  expect_type(nycvehiclethefts_tbl_df$location_type, "character")
  expect_type(nycvehiclethefts_tbl_df$location_category, "character")
  expect_type(nycvehiclethefts_tbl_df$census_block, "character")

  # Check for non-null values in key columns
  expect_true(all(!is.na(nycvehiclethefts_tbl_df$uid)))
  expect_true(all(!is.na(nycvehiclethefts_tbl_df$date_single)))
  expect_true(all(!is.na(nycvehiclethefts_tbl_df$longitude)))
  expect_true(all(!is.na(nycvehiclethefts_tbl_df$latitude)))
})



