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

# USJudgeRatings_df  data set


library(testthat)

library(usdatasets)

test_that("USJudgeRatings_df structure and content tests", {

  # Check that USJudgeRatings_df has 12 columns
  expect_equal(length(USJudgeRatings_df), 12)

  # Check column names
  expected_colnames <- c("CONT", "INTG", "DMNR", "DILG", "CFMG", "DECI", "PREP", "FAMI", "ORAL", "WRIT", "PHYS", "RTEN")
  expect_equal(names(USJudgeRatings_df), expected_colnames)

  # Check data types of each column (all columns should be numeric)
  for (col in expected_colnames) {
    expect_type(USJudgeRatings_df[[col]], "double")  # 'num' in str() corresponds to 'double' in testthat
  }

  # Check that there are no NA values in any columns
  for (col in expected_colnames) {
    expect_equal(sum(is.na(USJudgeRatings_df[[col]])), 0)
  }

  # Check that all columns have logical values (e.g., non-negative)
  for (col in expected_colnames) {
    expect_true(all(USJudgeRatings_df[[col]] >= 0))
  }

})

