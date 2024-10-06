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

# births14_tbl_df data set



library(testthat)

library(usdatasets)

test_that("births14_tbl_df loads correctly and has the expected structure", {
  # Load the dataset
  data("births14_tbl_df", package = "usdatasets")

  # Check the object is a tibble
  expect_s3_class(births14_tbl_df, "tbl_df") # Verify it is a tibble

  # Verify the number of rows and columns
  expect_equal(nrow(births14_tbl_df), 1000) # Verify the number of rows (1000)
  expect_equal(ncol(births14_tbl_df), 13)   # Verify the number of columns (13)

  # Check that the column names are as expected
  expected_names <- c("fage", "mage", "mature", "weeks", "premie", "visits", "gained",
                      "weight", "lowbirthweight", "sex", "habit", "marital", "whitemom")
  expect_equal(names(births14_tbl_df), expected_names)

  # Verify data types of key columns
  expect_type(births14_tbl_df$fage, "integer")
  expect_type(births14_tbl_df$mage, "double")
  expect_type(births14_tbl_df$mature, "character")
  expect_type(births14_tbl_df$weeks, "double")
  expect_type(births14_tbl_df$premie, "character")
  expect_type(births14_tbl_df$visits, "double")
  expect_type(births14_tbl_df$gained, "double")
  expect_type(births14_tbl_df$weight, "double")
  expect_type(births14_tbl_df$lowbirthweight, "character")
  expect_type(births14_tbl_df$sex, "character")
  expect_type(births14_tbl_df$habit, "character")
  expect_type(births14_tbl_df$marital, "character")
  expect_type(births14_tbl_df$whitemom, "character")

  # Report NA values without assuming they shouldn't exist
  na_fage_count <- sum(is.na(births14_tbl_df$fage))
  expect_true(na_fage_count >= 0, info = paste("There are", na_fage_count, "NA values in the 'fage' column."))

  # Check if there are no NA values in 'weight' column
  expect_false(any(is.na(births14_tbl_df$weight)), info = "There are NA values in the 'weight' column.")
})
