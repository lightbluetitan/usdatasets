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

# age_at_mar_tbl_df data set

library(testthat)

library(usdatasets)

test_that("age_at_mar_tbl_df loads correctly and has the expected structure", {

  # Load the dataset
  data("age_at_mar_tbl_df", package = "usdatasets")

  # Check that it's a tibble (tbl_df)
  expect_s3_class(age_at_mar_tbl_df, "tbl_df")

  # Check the dimensions (5,534 rows and 1 column)
  expect_equal(nrow(age_at_mar_tbl_df), 5534)
  expect_equal(ncol(age_at_mar_tbl_df), 1)

  # Check column names
  expect_equal(names(age_at_mar_tbl_df), "age")

  # Check the class of the 'age' column
  expect_type(age_at_mar_tbl_df$age, "integer")

  # Check for NA values
  expect_true(anyNA(age_at_mar_tbl_df) == FALSE)  # No NAs are expected

  # Check for some specific values or characteristics (if applicable)
  # For example, age should be greater than or equal to 0 (assuming no negative values)
  expect_true(all(age_at_mar_tbl_df$age >= 0))
})

