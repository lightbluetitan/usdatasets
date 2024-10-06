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

# acs12_tbl_df data set

library(testthat)

library(usdatasets)

test_that("acs12_tbl_df loads correctly and has the expected structure", {
  data("acs12_tbl_df")  # Load the dataset

  # Check if it is a tibble (tbl_df)
  expect_s3_class(acs12_tbl_df, "tbl_df")

  # Verify it has 13 columns
  expect_equal(ncol(acs12_tbl_df), 13)

  # Verify column names
  expected_colnames <- c("income", "employment", "hrs_work", "race", "age",
                         "gender", "citizen", "time_to_work", "lang",
                         "married", "edu", "disability", "birth_qrtr")
  expect_equal(names(acs12_tbl_df), expected_colnames)

  # Check if columns have the correct data types
  expect_type(acs12_tbl_df$income, "integer")
  expect_s3_class(acs12_tbl_df$employment, "factor")
  expect_type(acs12_tbl_df$hrs_work, "integer")
  expect_s3_class(acs12_tbl_df$race, "factor")
  expect_type(acs12_tbl_df$age, "integer")
  expect_s3_class(acs12_tbl_df$gender, "factor")
  expect_s3_class(acs12_tbl_df$citizen, "factor")
  expect_type(acs12_tbl_df$time_to_work, "integer")
  expect_s3_class(acs12_tbl_df$lang, "factor")
  expect_s3_class(acs12_tbl_df$married, "factor")
  expect_s3_class(acs12_tbl_df$edu, "factor")
  expect_s3_class(acs12_tbl_df$disability, "factor")
  expect_s3_class(acs12_tbl_df$birth_qrtr, "factor")

  # Check if the dataset has 2000 rows
  expect_equal(nrow(acs12_tbl_df), 2000)

  # Verify if there are any NA values (handling missing values)
  expect_true(anyNA(acs12_tbl_df) | !anyNA(acs12_tbl_df))  # Checks if NA exists or not

  # Optionally, you can check for NA count per column
  # expect_equal(sum(is.na(acs12_tbl_df$income)), expected_na_income)
  # expect_equal(sum(is.na(acs12_tbl_df$employment)), expected_na_employment)
})

