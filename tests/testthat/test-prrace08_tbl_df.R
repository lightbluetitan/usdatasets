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

# prrace08_tbl_df  data set


library(testthat)

library(usdatasets)

# Assume prrace08_tbl_df is already loaded from the usdatasets package
test_that("prrace08_tbl_df structure and content validation", {

  # Check that the dataset is a tibble
  expect_s3_class(prrace08_tbl_df, "tbl_df")

  # Check that the dataset is a data.frame
  expect_s3_class(prrace08_tbl_df, "data.frame")

  # Check the number of columns
  expect_equal(ncol(prrace08_tbl_df), 7)

  # Check that the column names are as expected
  expected_names <- c("state", "state_full", "n_obama", "p_obama", "n_mc_cain", "p_mc_cain", "el_votes")
  expect_equal(names(prrace08_tbl_df), expected_names)

  # Check that columns have the correct data types using class()
  expect_equal(class(prrace08_tbl_df$state), "factor")
  expect_equal(class(prrace08_tbl_df$state_full), "factor")
  expect_equal(class(prrace08_tbl_df$n_obama), "integer")
  expect_equal(class(prrace08_tbl_df$p_obama), "numeric")
  expect_equal(class(prrace08_tbl_df$n_mc_cain), "integer")
  expect_equal(class(prrace08_tbl_df$p_mc_cain), "numeric")
  expect_equal(class(prrace08_tbl_df$el_votes), "integer")

  # Check for NA values in the columns
  expect_false(any(is.na(prrace08_tbl_df$n_obama)), info = "There should be no NA values in n_obama")
  expect_false(any(is.na(prrace08_tbl_df$p_obama)), info = "There should be no NA values in p_obama")
  expect_false(any(is.na(prrace08_tbl_df$n_mc_cain)), info = "There should be no NA values in n_mc_cain")
  expect_false(any(is.na(prrace08_tbl_df$p_mc_cain)), info = "There should be no NA values in p_mc_cain")
  expect_false(any(is.na(prrace08_tbl_df$el_votes)), info = "There should be no NA values in el_votes")
})

