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

# USArrests_df  data set


library(testthat)

library(usdatasets)

test_that("USArrests_df structure and content tests", {

  # Check that USArrests_df has 4 columns
  expect_equal(length(USArrests_df), 4)

  # Check column names
  expected_colnames <- c("Murder", "Assault", "UrbanPop", "Rape")
  expect_equal(names(USArrests_df), expected_colnames)

  # Check data types of each column
  expect_type(USArrests_df$Murder, "double")  # 'num' in str() corresponds to 'double' in testthat
  expect_type(USArrests_df$Assault, "integer")
  expect_type(USArrests_df$UrbanPop, "integer")
  expect_type(USArrests_df$Rape, "double")

  # Check that there are no NA values in the columns
  expect_equal(sum(is.na(USArrests_df$Murder)), 0)
  expect_equal(sum(is.na(USArrests_df$Assault)), 0)
  expect_equal(sum(is.na(USArrests_df$UrbanPop)), 0)
  expect_equal(sum(is.na(USArrests_df$Rape)), 0)

  # Check that the numerical columns have logical values (e.g., no negative values)
  expect_true(all(USArrests_df$Murder >= 0))
  expect_true(all(USArrests_df$Assault >= 0))
  expect_true(all(USArrests_df$UrbanPop >= 0))
  expect_true(all(USArrests_df$Rape >= 0))

})
