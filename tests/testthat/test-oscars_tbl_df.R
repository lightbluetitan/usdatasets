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

# oscars_tbl_df data set

library(testthat)

library(usdatasets)

# Begin the tests
test_that("oscars_tbl_df has the correct structure", {

  # Check if the dataset is a tibble
  expect_s3_class(oscars_tbl_df, "tbl_df")

  # Check the number of rows and columns
  expect_equal(nrow(oscars_tbl_df), 184)
  expect_equal(ncol(oscars_tbl_df), 11)

  # Check that there are no null values in the key columns
  expect_true(all(!is.na(oscars_tbl_df$oscar_no)))
  expect_true(all(!is.na(oscars_tbl_df$oscar_yr)))
  expect_true(all(!is.na(oscars_tbl_df$award)))
  expect_true(all(!is.na(oscars_tbl_df$name)))
  expect_true(all(!is.na(oscars_tbl_df$movie)))
  expect_true(all(!is.na(oscars_tbl_df$age)))
  expect_true(all(!is.na(oscars_tbl_df$birth_pl)))
  expect_true(all(!is.na(oscars_tbl_df$birth_date)))

  # Verify the types of each key column
  expect_type(oscars_tbl_df$oscar_no, "double") # or "integer" depending on how it was read
  expect_type(oscars_tbl_df$oscar_yr, "double") # or "integer"
  expect_type(oscars_tbl_df$award, "character")
  expect_type(oscars_tbl_df$name, "character")
  expect_type(oscars_tbl_df$movie, "character")
  expect_type(oscars_tbl_df$age, "double") # or "integer"
  expect_type(oscars_tbl_df$birth_pl, "character")
  expect_type(oscars_tbl_df$birth_date, "double") # should be "double" for Date objects
  expect_type(oscars_tbl_df$birth_mo, "double") # or "integer"
  expect_type(oscars_tbl_df$birth_d, "double") # or "integer"
  expect_type(oscars_tbl_df$birth_y, "double") # or "integer"

})
