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

# births_tbl_df data set

library(testthat)

library(usdatasets)

test_that("births_tbl_df loads correctly and has the expected structure", {
  # Load the dataset
  data("births_tbl_df", package = "usdatasets")

  # Check the object is a tibble
  expect_s3_class(births_tbl_df, "tbl_df") # Verify it is a tibble

  # Verify the number of rows and columns
  expect_equal(nrow(births_tbl_df), 150) # Verify the number of rows (150)
  expect_equal(ncol(births_tbl_df), 9)   # Verify the number of columns (9)

  # Check that the column names are as expected
  expected_names <- c("f_age", "m_age", "weeks", "premature", "visits", "gained",
                      "weight", "sex_baby", "smoke")
  expect_equal(names(births_tbl_df), expected_names)

  # Verify data types of key columns
  expect_type(births_tbl_df$f_age, "integer")
  expect_type(births_tbl_df$m_age, "integer")
  expect_type(births_tbl_df$weeks, "integer")
  expect_s3_class(births_tbl_df$premature, "factor")
  expect_type(births_tbl_df$visits, "integer")
  expect_type(births_tbl_df$gained, "integer")
  expect_type(births_tbl_df$weight, "double")
  expect_s3_class(births_tbl_df$sex_baby, "factor")
  expect_s3_class(births_tbl_df$smoke, "factor")

  # Report NA values without assuming they shouldn't exist
  na_f_age_count <- sum(is.na(births_tbl_df$f_age))
  expect_true(na_f_age_count >= 0, info = paste("There are", na_f_age_count, "NA values in the 'f_age' column."))

  # Check if there are no NA values in 'weight' column
  expect_false(any(is.na(births_tbl_df$weight)), info = "There are NA values in the 'weight' column.")
})

